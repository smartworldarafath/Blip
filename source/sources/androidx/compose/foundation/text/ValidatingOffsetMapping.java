package androidx.compose.foundation.text;

import androidx.compose.ui.text.input.OffsetMapping;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ValidatingOffsetMapping implements OffsetMapping {
    public final OffsetMapping a;
    public final int b;
    public final int c;

    public ValidatingOffsetMapping(OffsetMapping offsetMapping, int i, int i2) {
        this.a = offsetMapping;
        this.b = i;
        this.c = i2;
    }

    @Override // androidx.compose.ui.text.input.OffsetMapping
    public final int a(int i) {
        int a = this.a.a(i);
        if (i >= 0 && i <= this.c) {
            ValidatingOffsetMappingKt.c(a, this.b, i);
        }
        return a;
    }

    @Override // androidx.compose.ui.text.input.OffsetMapping
    public final int b(int i) {
        int b = this.a.b(i);
        if (i >= 0 && i <= this.b) {
            ValidatingOffsetMappingKt.b(b, this.c, i);
        }
        return b;
    }
}
