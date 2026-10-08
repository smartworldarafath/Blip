package net.blip.shared;

import androidx.compose.ui.text.input.OffsetMapping;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OTPCodeVisualTransformation$filter$offsetMapping$1 implements OffsetMapping {
    @Override // androidx.compose.ui.text.input.OffsetMapping
    public final int a(int i) {
        if (i >= 3) {
            return i - 1;
        }
        return i;
    }

    @Override // androidx.compose.ui.text.input.OffsetMapping
    public final int b(int i) {
        if (i >= 3) {
            return i + 1;
        }
        return i;
    }
}
