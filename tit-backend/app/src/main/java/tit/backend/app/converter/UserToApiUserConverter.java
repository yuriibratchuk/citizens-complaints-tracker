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

import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import tit.backend.app.api.ApiUser;
import tit.backend.app.model.User;

import java.util.Collection;
import java.util.stream.Collectors;

/**
 * Converter of persistence model {@link User} to endpoint model {@link ApiUser}.
 *
 * @author Yurii Bratchuk
 */
@Component
public class UserToApiUserConverter implements Converter<User, ApiUser>, CollectionConverter<User, ApiUser> {
    @Override
    public ApiUser convert(User source) {
        ApiUser apiUser = new ApiUser();
        apiUser.setUserId(source.getId());
        apiUser.setDisplayName(source.getName());

        return apiUser;
    }

    @Override
    public Collection<ApiUser> convertCollection(Collection<User> source) {
        return source.stream().map(this::convert).collect(Collectors.toList());
    }
}
