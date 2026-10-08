package androidx.compose.runtime.composer.gapbuffer.changelist;

import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.tooling.ComposeStackTraceBuilderKt;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OperationKt$withCurrentStackTrace$1 implements OperationErrorContext {
    public final /* synthetic */ OperationErrorContext j;
    public final /* synthetic */ SlotWriter k;

    public OperationKt$withCurrentStackTrace$1(OperationErrorContext operationErrorContext, SlotWriter slotWriter) {
        this.j = operationErrorContext;
        this.k = slotWriter;
    }

    @Override // androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext
    public final List a(Integer num) {
        List a = this.j.a(null);
        SlotWriter slotWriter = this.k;
        int i = slotWriter.v;
        if (i < 0) {
            return a;
        }
        return CollectionsKt.F(ComposeStackTraceBuilderKt.a(slotWriter, num, i, Integer.valueOf(slotWriter.E(slotWriter.b, i))), a);
    }

    @Override // androidx.compose.runtime.composer.gapbuffer.changelist.OperationErrorContext
    public final boolean b() {
        return this.j.b();
    }
}
