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

package tit.backend.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tit.backend.app.api.ApiTicket;
import tit.backend.app.api.ApiTicketHistory;
import tit.backend.app.api.input.InputApiTicket;
import tit.backend.app.converter.TicketHistoryToApiTicketHistoryConverter;
import tit.backend.app.converter.TicketToApiTicketConverter;
import tit.backend.app.dao.TicketDao;
import tit.backend.app.dao.TicketHistoryDao;
import tit.backend.app.dao.UserDao;
import tit.backend.app.exception.TicketNotFoundException;
import tit.backend.app.model.Ticket;
import tit.backend.app.model.TicketHistory;
import tit.backend.app.model.User;

import javax.transaction.Transactional;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * Service for tickets.
 *
 * @author Yurii Bratchuk
 */
@Service
public class TicketService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private TicketDao ticketDao;

    @Autowired
    private TicketHistoryDao ticketHistoryDao;

    @Autowired
    private TicketToApiTicketConverter ticketToApiTicketConverter;

    @Autowired
    private TicketHistoryToApiTicketHistoryConverter ticketHistoryToApiTicketHistoryConverter;

    public Ticket add(InputApiTicket input, User user) {
        Ticket ticket = new Ticket();
        ticket.setAuthor(user);
        ticket.setSubject(input.getSubject());
        ticket.setBody(input.getBody());

        long timestamp = System.currentTimeMillis();
        ticket.setCreatedAt(timestamp);
        ticket.setUpdatedAt(timestamp);

        // TODO: implement assigning to moderator

        return ticketDao.save(ticket);

    }

    public ApiTicket get(long ticketId) {
        Ticket ticket = attemptGet(ticketId);
        return ticketToApiTicketConverter.convert(ticket);
    }

    public List<ApiTicketHistory> getHistory(long ticketId) {
        List<TicketHistory> ticketHistory = ticketHistoryDao.findByTicket(ticketId);

        // TODO: verify behavior
        if (ticketHistory == null) {
            return Collections.emptyList();
        }
        return ticketHistoryToApiTicketHistoryConverter.convertCollection(ticketHistory).stream().collect(Collectors.toList());
    }

    @Transactional
    public void like(long ticketId, User user) {
        Ticket ticket = attemptGet(ticketId);

        User u = userDao.findByLogin(user.getLogin());
        Set<User> usersWhoLike = ticket.getLikes();
        usersWhoLike.add(u);
    }

    @Transactional
    public void unlike(long ticketId, User user) {
        Ticket ticket = attemptGet(ticketId);

        // TODO: looks slow, need rework
        Set<User> usersWhoLike = ticket.getLikes();
        for (Iterator<User> iterator = usersWhoLike.iterator(); iterator.hasNext(); ) {
            User u = iterator.next();
            if (u.getId().equals(user.getId())) {
                iterator.remove();
            }
        }
        ticket.setLikes(usersWhoLike);
        ticketDao.save(ticket);
    }

    private Ticket attemptGet(long ticketId) {
        Ticket ticket = ticketDao.findOne(ticketId);
        if (ticket == null) {
            throw new TicketNotFoundException();
        }
        return ticket;
    }
}
