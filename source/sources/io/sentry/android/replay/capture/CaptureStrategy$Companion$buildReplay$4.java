package io.sentry.android.replay.capture;

import io.sentry.rrweb.RRWebEvent;
import java.util.ArrayList;
import java.util.Date;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class CaptureStrategy$Companion$buildReplay$4 extends Lambda implements Function1<RRWebEvent, Unit> {
    public final /* synthetic */ Date k;
    public final /* synthetic */ ArrayList l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CaptureStrategy$Companion$buildReplay$4(Date date, ArrayList arrayList) {
        super(1);
        this.k = date;
        this.l = arrayList;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        RRWebEvent rRWebEvent = (RRWebEvent) obj;
        rRWebEvent.getClass();
        if (rRWebEvent.k >= this.k.getTime()) {
            this.l.add(rRWebEvent);
        }
        return Unit.a;
    }
}
