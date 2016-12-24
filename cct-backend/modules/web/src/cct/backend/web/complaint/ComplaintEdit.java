/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2016 Contributors of CCT project
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
package cct.backend.web.complaint;

import cct.backend.entity.Complaint;
import com.haulmont.cuba.core.app.FileStorageService;
import com.haulmont.cuba.core.entity.FileDescriptor;
import com.haulmont.cuba.core.global.FileStorageException;
import com.haulmont.cuba.gui.components.*;
import com.haulmont.cuba.gui.data.DataSupplier;
import com.haulmont.cuba.gui.data.Datasource;
import com.haulmont.cuba.gui.export.ExportDisplay;
import com.haulmont.cuba.gui.export.ExportFormat;
import com.haulmont.cuba.gui.upload.FileUploadingAPI;
import com.haulmont.cuba.gui.xml.layout.ComponentsFactory;
import com.haulmont.cuba.web.gui.components.WebComponentsHelper;
import com.vaadin.server.Sizeable;
import com.vaadin.ui.Layout;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.vaadin.addon.leaflet.LMap;
import org.vaadin.addon.leaflet.LMarker;
import org.vaadin.addon.leaflet.LOpenStreetMapLayer;
import org.vaadin.addon.leaflet.shared.Point;

import javax.imageio.ImageIO;
import javax.inject.Inject;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Map;

/**
 * Editor for Complaint entity.
 *
 * @author Yurii Bratchuk
 */
public class ComplaintEdit extends AbstractEditor<Complaint> {

    private static final int IMG_HEIGHT = 190;

    private static final int IMG_WIDTH = 220;

    private Logger log = LoggerFactory.getLogger(getClass());

    @Inject
    private ComponentsFactory componentsFactory;
    @Inject
    private FieldGroup mainEditableFields;


    @Inject
    private DataSupplier dataSupplier;
    @Inject
    private FileStorageService fileStorageService;
    @Inject
    private FileUploadingAPI fileUploadingAPI;
    @Inject
    private ExportDisplay exportDisplay;

    @Inject
    private Embedded embeddedImage;
    @Inject
    private FileUploadField uploadField;
    @Inject
    private Button downloadImageBtn;
    @Inject
    private Button clearImageBtn;

    @Inject
    private Datasource<Complaint> complaintDs;


    private LMap leafletMap = new LMap();

    @Override
    public void init(Map<String, Object> params) {

        // Map setup
        leafletMap.setZoomLevel(15);
        leafletMap.setHeight(140, Sizeable.Unit.POINTS);
        leafletMap.addBaseLayer(new LOpenStreetMapLayer(), "OpenStreetMap");
        leafletMap.addClickListener(event -> {
            boolean isExpressAddAllow = false;

            // Remove marker if exists
            for (com.vaadin.ui.Component c : leafletMap) {
                if (c instanceof LMarker) {
                    leafletMap.removeComponent(c);

                    Complaint complaint = getItem();
                    if (complaint == null) return;

                    complaint.setLatitude(null);
                    complaint.setLongitude(null);

                    isExpressAddAllow = true;
                    break;
                }
            }

            // Expected that leafletMap could contain maximum two child components: layer and marker
            boolean isLayerOnlyAdded = leafletMap.getComponentCount() == 1;

            if (isLayerOnlyAdded || isExpressAddAllow) {

                Complaint complaint = getItem();
                if (complaint == null) return;

                Point point = event.getPoint();
                double latitude = point.getLat();
                double longitude = point.getLon();
                complaint.setLatitude(latitude);
                complaint.setLongitude(longitude);
                leafletMap.addComponent(createMarker(latitude, longitude));

            }

        });

        mainEditableFields.addCustomField("map", (datasource, propertyId) -> {
            Component box = componentsFactory.createComponent(VBoxLayout.class);
            Layout layout = (Layout) WebComponentsHelper.unwrap(box);
            layout.addComponent(leafletMap);
            return box;
        });

        // Attachment
        uploadField.addFileUploadSucceedListener(event -> {
            FileDescriptor fd = uploadField.getFileDescriptor();
            try {
                fileUploadingAPI.putFileIntoStorage(uploadField.getFileId(), fd);
            } catch (FileStorageException e) {
                throw new RuntimeException("Error saving file to FileStorage", e);
            }
            getItem().setImageFile(dataSupplier.commit(fd));
            displayImage();
        });

        uploadField.addFileUploadErrorListener(event ->
                showNotification("File upload error", NotificationType.HUMANIZED));

        complaintDs.addItemPropertyChangeListener(event -> {
            if ("imageFile".equals(event.getProperty()))
                updateImageButtons(event.getValue() != null);
        });
    }

    @Override
    protected void postInit() {

        // Post init attached image
        displayImage();
        updateImageButtons(getItem().getImageFile() != null);

        // Setting marker on the map
        Double latitude = getItem().getLatitude();
        Double longitude = getItem().getLongitude();

        if (latitude == null || longitude == null)
        {
            leafletMap.setZoomLevel(0);
            return;
        }

        leafletMap.addComponent(createMarker(latitude, longitude));
        leafletMap.setCenter(latitude, longitude);
    }

    private static LMarker createMarker(double latitude, double longitude) {
        return new LMarker(latitude, longitude);
    }

    public void onDownloadImageBtnClick() {
        if (getItem().getImageFile() != null)
            exportDisplay.show(getItem().getImageFile(), ExportFormat.OCTET_STREAM);
    }

    public void onClearImageBtnClick() {
        getItem().setImageFile(null);
        displayImage();
    }

    private void updateImageButtons(boolean enable) {
        downloadImageBtn.setEnabled(enable);
        clearImageBtn.setEnabled(enable);
    }

    private void displayImage() {
        byte[] bytes = null;
        if (getItem().getImageFile() != null) {
            try {
                bytes = fileStorageService.loadFile(getItem().getImageFile());
            } catch (FileStorageException e) {
                log.error("Unable to load image file", e);
                showNotification("Unable to load image file", NotificationType.HUMANIZED);
            }
        }
        if (bytes != null) {
            embeddedImage.setSource(getItem().getImageFile().getName(), new ByteArrayInputStream(bytes));
            embeddedImage.setType(Embedded.Type.IMAGE);
            BufferedImage image;
            try {
                image = ImageIO.read(new ByteArrayInputStream(bytes));
                int width = image.getWidth();
                int height = image.getHeight();

                if (((double) height / (double) width) > ((double) IMG_HEIGHT / (double) IMG_WIDTH)) {
                    embeddedImage.setHeight(String.valueOf(IMG_HEIGHT));
                    embeddedImage.setWidth(String.valueOf(width * IMG_HEIGHT / height));
                } else {
                    embeddedImage.setWidth(String.valueOf(IMG_WIDTH));
                    embeddedImage.setHeight(String.valueOf(height * IMG_WIDTH / width));
                }
            } catch (IOException e) {
                log.error("Unable to resize image", e);
            }
            // refresh image
            embeddedImage.setVisible(false);
            embeddedImage.setVisible(true);
        } else {
            embeddedImage.setVisible(false);
        }
    }
}