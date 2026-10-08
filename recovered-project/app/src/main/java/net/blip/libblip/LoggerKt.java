package net.blip.libblip;

import kotlin.collections.EmptyList;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LoggerKt {
    public static final Logger a = new Logger(EmptyList.j);

    public static final Object a(int i, Object[] objArr) {
        return objArr[RangesKt.d(i, 0, objArr.length - 1)];
    }
}
