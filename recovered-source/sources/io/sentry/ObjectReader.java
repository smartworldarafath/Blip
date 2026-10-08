package io.sentry;

import io.sentry.vendor.gson.stream.JsonToken;
import java.io.Closeable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.TimeZone;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ObjectReader extends Closeable {
    void D(ILogger iLogger, AbstractMap abstractMap, String str);

    Long F();

    Object G0();

    void H0();

    TimeZone K(ILogger iLogger);

    String L();

    void M(boolean z);

    HashMap Q(ILogger iLogger, JsonDeserializer jsonDeserializer);

    void Q0();

    ArrayList R0(ILogger iLogger, JsonDeserializer jsonDeserializer);

    void T0();

    Double c0();

    String e0();

    boolean hasNext();

    void i0();

    Date k0(ILogger iLogger);

    Boolean n0();

    double nextDouble();

    float nextFloat();

    int nextInt();

    long nextLong();

    JsonToken peek();

    String r();

    void x();

    Integer y();

    Float y0();

    Object z0(ILogger iLogger, JsonDeserializer jsonDeserializer);
}
