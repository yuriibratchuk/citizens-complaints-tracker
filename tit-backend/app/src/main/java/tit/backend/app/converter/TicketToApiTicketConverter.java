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

package tit.backend.app.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import tit.backend.app.api.ApiTicket;
import tit.backend.app.api.ApiUser;
import tit.backend.app.model.Ticket;
import tit.backend.app.model.User;

import java.util.Collection;
import java.util.stream.Collectors;

/**
 * Converter of persistence model {@link Ticket} to endpoint model {@link ApiTicket}.
 *
 * @author Yurii Bratchuk
 */
@Component
public class TicketToApiTicketConverter implements Converter<Ticket, ApiTicket> {

    @Autowired
    private UserToApiUserConverter userToApiUserConverter;

    @Override
    public ApiTicket convert(Ticket source) {
        ApiTicket apiTicket = new ApiTicket();
        apiTicket.setTicketId(source.getTicketId());
        apiTicket.setSubject(source.getSubject());
        apiTicket.setBody(source.getBody());

        User author = source.getAuthor();
        apiTicket.setAuthor(userToApiUserConverter.convert(author));

        User assignedTo = source.getAssignedTo();
        apiTicket.setAssignedTo(userToApiUserConverter.convert(assignedTo));

        Collection<ApiUser> usersWhoLiked = userToApiUserConverter.convertCollection(source.getLikes());
        apiTicket.setLiked(usersWhoLiked.stream().collect(Collectors.toList()));

        Collection<ApiUser> subscribers = userToApiUserConverter.convertCollection(source.getSubscribers());
        apiTicket.setSubscribers(subscribers.stream().collect(Collectors.toList()));

        apiTicket.setCreatedAt(source.getCreatedAt());
        apiTicket.setUpdatedAt(source.getUpdatedAt());

        return apiTicket;
    }
}
