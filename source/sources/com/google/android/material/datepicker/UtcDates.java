package com.google.android.material.datepicker;

import java.util.Calendar;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class UtcDates {
    static {
        new AtomicReference();
    }

    public static Calendar a(Calendar calendar) {
        Calendar b = b(calendar);
        Calendar b2 = b(null);
        b2.set(b.get(1), b.get(2), b.get(5));
        return b2;
    }

    public static Calendar b(Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        if (calendar == null) {
            calendar2.clear();
            return calendar2;
        }
        calendar2.setTimeInMillis(calendar.getTimeInMillis());
        return calendar2;
    }
}
