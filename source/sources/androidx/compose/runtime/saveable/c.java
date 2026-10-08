package androidx.compose.runtime.saveable;

import defpackage.u2;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Function0 {
    public final /* synthetic */ SaveableHolder j;

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        SaveableHolder saveableHolder = this.j;
        Saver saver = saveableHolder.j;
        Object obj = saveableHolder.m;
        if (obj != null) {
            return saver.b(saveableHolder, obj);
        }
        u2.g("Value should be initialized");
        return null;
    }
}
