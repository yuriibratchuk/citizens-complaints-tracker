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
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.*;
import tit.backend.app.api.ApiTicket;
import tit.backend.app.dao.UserDao;
import tit.backend.app.model.User;
import tit.backend.app.service.TicketService;

import java.util.List;

@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    private TicketService ticketService;

    @Autowired
    private UserDao userDao;

    @RequestMapping("all")
    public Iterable<User> getUsers() {
        return userDao.findAll();
    }

    @RequestMapping(value = "/{userId}", method = RequestMethod.GET)
    public List<ApiTicket> getOfAuthor(@PathVariable long userId,
                                       @RequestParam(required = false) int page,
                                       @RequestParam(required = false) int pageSize,
                                       @RequestParam(required = false) String fields) {
        return ticketService.getOfAuthor(userId, page, pageSize, new Sort(Sort.Direction.DESC, "createdAt"));
    }

}
