package net.blip.shared;

import java.util.List;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SelectionListKt$items$4 implements Function1<Integer, Boolean> {
    public final /* synthetic */ SelectionListKt$items$7 j;
    public final /* synthetic */ List k;

    public SelectionListKt$items$4(SelectionListKt$items$7 selectionListKt$items$7, List list) {
        this.j = selectionListKt$items$7;
        this.k = list;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        return (Boolean) this.j.b(this.k.get(((Number) obj).intValue()));
    }
}
