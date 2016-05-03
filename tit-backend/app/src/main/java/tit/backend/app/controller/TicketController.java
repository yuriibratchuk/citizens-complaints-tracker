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

package tit.backend.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import tit.backend.app.api.ApiTicket;
import tit.backend.app.api.ApiTicketHistory;
import tit.backend.app.api.ApiUser;
import tit.backend.app.api.input.InputApiTicket;
import tit.backend.app.model.Ticket;
import tit.backend.app.model.User;
import tit.backend.app.service.TicketService;

import javax.validation.Valid;
import java.util.List;

/**
 * Controller for Ticket-related endpoints.
 *
 * @author Yurii Bratchuk
 */
@RestController
@RequestMapping("/ticket")
public class TicketController {

    @Autowired
    private TicketService ticketService;

    @RequestMapping(method = RequestMethod.POST)
    ResponseEntity<?> add(@Valid @RequestBody InputApiTicket input, @AuthenticationPrincipal User user) {
        Ticket result = ticketService.add(input, user);

        HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.setLocation(ServletUriComponentsBuilder
                .fromCurrentRequest().path("/{ticketId}")
                .buildAndExpand(result.getTicketId()).toUri());
        return new ResponseEntity<>(null, httpHeaders, HttpStatus.CREATED);

    }

    @RequestMapping(value = "/{ticketId}", method = RequestMethod.GET)
    public ApiTicket get(@PathVariable long ticketId, @RequestParam(required = false) String fields, @AuthenticationPrincipal User user) {
        return ticketService.get(ticketId).onlySelectedFields(fields);
    }

    @RequestMapping(value = "/{ticketId}/history}", method = RequestMethod.GET)
    public List<ApiTicketHistory> getHistory(@PathVariable long ticketId, @AuthenticationPrincipal User user) {
        return ticketService.getHistory(ticketId);
    }

    @RequestMapping(value = "/{ticketId}/liked}", method = RequestMethod.GET)
    public List<ApiUser> getLiked(@PathVariable long ticketId, @AuthenticationPrincipal User user) {
        return ticketService.get(ticketId).onlySelectedFields("liked").getLiked();
    }

    @RequestMapping(value = "/{ticketId}/subscribers}", method = RequestMethod.GET)
    public List<ApiUser> getSubscribers(@PathVariable long ticketId, @AuthenticationPrincipal User user) {
        return ticketService.get(ticketId).onlySelectedFields("subscribed").getSubscribers();
    }

}
