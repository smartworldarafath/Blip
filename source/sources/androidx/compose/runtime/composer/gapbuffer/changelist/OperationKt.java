package androidx.compose.runtime.composer.gapbuffer.changelist;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class OperationKt {
    public static final void a(SlotWriter slotWriter, Applier applier, int i) {
        while (true) {
            int i2 = slotWriter.v;
            if (i <= i2 || i >= slotWriter.u) {
                if (i2 == 0 && i == 0) {
                    return;
                }
                slotWriter.M();
                if (slotWriter.y(slotWriter.v)) {
                    applier.g();
                }
                slotWriter.j();
            } else {
                return;
            }
        }
    }
}
