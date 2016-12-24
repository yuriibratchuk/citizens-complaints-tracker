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
package cct.backend.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.haulmont.cuba.core.entity.*;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Version;
import java.util.Date;

import com.haulmont.chile.core.annotations.NamePattern;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import java.util.UUID;

/**
 * Complaint entity.
 *
 * @author Yurii Bratchuk
 */
@NamePattern("%s|subject")
@Table(name = "CCT_COMPLAINT")
@Entity(name = "cct$Complaint")
public class Complaint extends BaseLongIdEntity implements Versioned, SoftDelete, Updatable, Creatable, HasUuid {
    private static final long serialVersionUID = 8851962717573536948L;

    @Column(name = "SUBJECT", nullable = false)
    protected String subject;

    @Lob
    @Column(name = "BODY_", nullable = false)
    protected String body;

    @Column(name = "STATE")
    protected Integer state;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ASSIGNEE_ID")
    protected UserExt assignee;

    @Temporal(TemporalType.DATE)
    @Column(name = "PLANNED_DATE")
    protected Date plannedDate;

    @Temporal(TemporalType.DATE)
    @Column(name = "CLOSED_DATE")
    protected Date closedDate;

    @Column(name = "ADDRESS", length = 512)
    protected String address;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "CATEGORY_ID")
    protected ComplaintCategory category;

    @Column(name = "LATITUDE")
    protected Double latitude;

    @Column(name = "LONGITUDE")
    protected Double longitude;

    @Column(name = "DECLINE_REASON")
    protected String declineReason;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "IMAGE_FILE_ID")
    protected FileDescriptor imageFile;

    @Column(name = "EMERGENCY")
    protected Boolean emergency = false;

    @Column(name = "PRIORITISED")
    protected Boolean prioritised = false;

    @Lob
    @Column(name = "MODERATOR_REMARK")
    protected String moderatorRemark;

    @Lob
    @Column(name = "EXECUTOR_REMARK")
    protected String executorRemark;

    @Version
    @Column(name = "VERSION", nullable = false)
    protected Integer version;

    @Column(name = "DELETE_TS")
    protected Date deleteTs;

    @Column(name = "DELETED_BY", length = 50)
    protected String deletedBy;

    @Column(name = "UPDATE_TS")
    protected Date updateTs;

    @Column(name = "UPDATED_BY", length = 50)
    protected String updatedBy;


    @Column(name = "CREATE_TS")
    protected Date createTs;

    @Column(name = "CREATED_BY", length = 50)
    protected String createdBy;

    @Column(name = "UUID")
    private UUID uuid;

    public void setModeratorRemark(String moderatorRemark) {
        this.moderatorRemark = moderatorRemark;
    }

    public String getModeratorRemark() {
        return moderatorRemark;
    }

    public void setExecutorRemark(String executorRemark) {
        this.executorRemark = executorRemark;
    }

    public String getExecutorRemark() {
        return executorRemark;
    }


    @Override
    public void setUuid(UUID uuid) {
        this.uuid = uuid;
    }

    @Override
    public UUID getUuid() {
        return uuid;
    }


    @Override
    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    @Override
    public String getCreatedBy() {
        return createdBy;
    }

    @Override
    public void setCreateTs(Date createTs) {
        this.createTs = createTs;
    }

    @Override
    public Date getCreateTs() {
        return createTs;
    }


    public void setPrioritised(Boolean prioritised) {
        this.prioritised = prioritised;
    }

    public Boolean getPrioritised() {
        return prioritised;
    }


    public void setEmergency(Boolean emergency) {
        this.emergency = emergency;
    }

    public Boolean getEmergency() {
        return emergency;
    }


    public void setImageFile(FileDescriptor imageFile) {
        this.imageFile = imageFile;
    }

    public FileDescriptor getImageFile() {
        return imageFile;
    }



    public void setDeclineReason(String declineReason) {
        this.declineReason = declineReason;
    }

    public String getDeclineReason() {
        return declineReason;
    }


    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    public Double getLatitude() {
        return latitude;
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }

    public Double getLongitude() {
        return longitude;
    }


    public void setCategory(ComplaintCategory category) {
        this.category = category;
    }

    public ComplaintCategory getCategory() {
        return category;
    }


    public void setAssignee(UserExt assignee) {
        this.assignee = assignee;
    }

    public UserExt getAssignee() {
        return assignee;
    }


    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddress() {
        return address;
    }


    public void setPlannedDate(Date plannedDate) {
        this.plannedDate = plannedDate;
    }

    public Date getPlannedDate() {
        return plannedDate;
    }

    public void setClosedDate(Date closedDate) {
        this.closedDate = closedDate;
    }

    public Date getClosedDate() {
        return closedDate;
    }


    public void setState(ComplaintState state) {
        this.state = state == null ? null : state.getId();
    }

    public ComplaintState getState() {
        return state == null ? null : ComplaintState.fromId(state);
    }


    @Override
    public void setUpdatedBy(String updatedBy) {
        this.updatedBy = updatedBy;
    }

    @Override
    public String getUpdatedBy() {
        return updatedBy;
    }

    @Override
    public void setUpdateTs(Date updateTs) {
        this.updateTs = updateTs;
    }

    @Override
    public Date getUpdateTs() {
        return updateTs;
    }


    @Override
    public Boolean isDeleted() {
        return deleteTs != null;
    }

    @Override
    public void setDeletedBy(String deletedBy) {
        this.deletedBy = deletedBy;
    }

    @Override
    public String getDeletedBy() {
        return deletedBy;
    }

    @Override
    public void setDeleteTs(Date deleteTs) {
        this.deleteTs = deleteTs;
    }

    @Override
    public Date getDeleteTs() {
        return deleteTs;
    }


    @Override
    public void setVersion(Integer version) {
        this.version = version;
    }

    @Override
    public Integer getVersion() {
        return version;
    }


    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getSubject() {
        return subject;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getBody() {
        return body;
    }


}