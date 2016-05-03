/*
 * Town Improvements Tracker(TIT)
 *
 * The MIT License (MIT)
 *
 * Copyright (c)2016 Contributors of TIT project
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

package tit.backend.app.api;

import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * Api ticket.
 *
 * @author Yurii Bratchuk
 */
public class ApiTicket {

    public enum Fields {
        TICKET_ID("ticketId"),
        SUBJECT("subject"),
        BODY("body"),
        PLACE("place"),
        AUTHOR("author"),
        ASSIGNED_TO("assignedTo"),
        STATUS("status"),
        CREATED_AT("createdAt"),
        UPDATED_AT("updatedAt"),
        LIKED("liked"),
        SUBSCRIBERS("subscribers");

        private String value;

        Fields(String value) {
            this.value = value;
        }

        @Override
        public String toString() {
            return value;
        }
    }

    private Long ticketId;
    private String subject;
    private String body;
    private ApiLatLng place;
    private ApiUser author;
    private ApiUser assignedTo;
    private String status;
    private Long createdAt;
    private Long updatedAt;

    private List<ApiUser> liked;
    private List<ApiUser> subscribers;

    public ApiTicket() {
    }

    public ApiTicket onlySelectedFields(String fieldsStr) {
        if (fieldsStr == null) {
            return this;
        }
        Set<String> fields = Arrays.stream(fieldsStr.split(",")).collect(Collectors.toSet());
        ApiTicket apiTicket = new ApiTicket();

        Field[] classFields = ApiTicket.class.getFields();
        for (Field classField : classFields) {
            String field = classField.getName();
            if (!fields.contains(field)) {
                continue;
            }

            if (field.equals(Fields.TICKET_ID)) {
                apiTicket.setTicketId(getTicketId());
                continue;
            }
            if (field.equals(Fields.SUBJECT)) {
                apiTicket.setSubject(getSubject());
                continue;
            }
            if (field.equals(Fields.BODY)) {
                apiTicket.setBody(getBody());
                continue;
            }
            if (field.equals(Fields.PLACE)) {
                apiTicket.setPlace(getPlace());
                continue;
            }
            if (field.equals(Fields.AUTHOR)) {
                apiTicket.setAuthor(getAuthor());
                continue;
            }
            if (field.equals(Fields.ASSIGNED_TO)) {
                apiTicket.setAssignedTo(getAssignedTo());
                continue;
            }
            if (field.equals(Fields.STATUS)) {
                apiTicket.setStatus(getStatus());
                continue;
            }
            if (field.equals(Fields.CREATED_AT)) {
                apiTicket.setCreatedAt(getCreatedAt());
                continue;
            }
            if (field.equals(Fields.UPDATED_AT)) {
                apiTicket.setUpdatedAt(getUpdatedAt());
                continue;
            }
            if (field.equals(Fields.LIKED)) {
                apiTicket.setLiked(getLiked());
                continue;
            }
            if (field.equals(Fields.SUBSCRIBERS)) {
                apiTicket.setSubscribers(getSubscribers());
            }
        }
        return apiTicket;
    }

    public ApiTicket excludeFields(String fieldsStr) {
        if (fieldsStr == null) {
            return this;
        }
        Set<String> fields = Arrays.stream(fieldsStr.split(",")).collect(Collectors.toSet());
        ApiTicket apiTicket = this;
        for (String field : fields) {
            if (field.equals(Fields.TICKET_ID)) {
                apiTicket.setTicketId(null);
                continue;
            }
            if (field.equals(Fields.SUBJECT)) {
                apiTicket.setSubject(null);
                continue;
            }
            if (field.equals(Fields.BODY)) {
                apiTicket.setBody(null);
                continue;
            }
            if (field.equals(Fields.PLACE)) {
                apiTicket.setPlace(null);
                continue;
            }
            if (field.equals(Fields.AUTHOR)) {
                apiTicket.setAuthor(null);
                continue;
            }
            if (field.equals(Fields.ASSIGNED_TO)) {
                apiTicket.setAssignedTo(null);
                continue;
            }
            if (field.equals(Fields.STATUS)) {
                apiTicket.setStatus(null);
                continue;
            }
            if (field.equals(Fields.CREATED_AT)) {
                apiTicket.setCreatedAt(null);
                continue;
            }
            if (field.equals(Fields.UPDATED_AT)) {
                apiTicket.setUpdatedAt(null);
                continue;
            }
            if (field.equals(Fields.LIKED)) {
                apiTicket.setLiked(null);
                continue;
            }
            if (field.equals(Fields.SUBSCRIBERS)) {
                apiTicket.setSubscribers(null);
            }
        }
        return apiTicket;
    }

    public Long getTicketId() {
        return ticketId;
    }

    public void setTicketId(Long ticketId) {
        this.ticketId = ticketId;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public ApiLatLng getPlace() {
        return place;
    }

    public void setPlace(ApiLatLng place) {
        this.place = place;
    }

    public ApiUser getAuthor() {
        return author;
    }

    public void setAuthor(ApiUser author) {
        this.author = author;
    }

    public ApiUser getAssignedTo() {
        return assignedTo;
    }

    public void setAssignedTo(ApiUser assignedTo) {
        this.assignedTo = assignedTo;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Long getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Long createdAt) {
        this.createdAt = createdAt;
    }

    public Long getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Long updatedAt) {
        this.updatedAt = updatedAt;
    }

    public List<ApiUser> getLiked() {
        return liked;
    }

    public void setLiked(List<ApiUser> liked) {
        this.liked = liked;
    }

    public List<ApiUser> getSubscribers() {
        return subscribers;
    }

    public void setSubscribers(List<ApiUser> subscribers) {
        this.subscribers = subscribers;
    }
}
