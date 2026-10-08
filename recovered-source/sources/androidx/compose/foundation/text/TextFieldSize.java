package androidx.compose.foundation.text;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class TextFieldSize {
    public LayoutDirection a;
    public Density b;
    public FontFamily.Resolver c;
    public TextStyle d;
    public Object e;
    public final MutableState f = SnapshotStateKt.g(Boolean.TRUE);
    public long g = 0;

    public TextFieldSize(LayoutDirection layoutDirection, Density density, FontFamily.Resolver resolver, TextStyle textStyle, Object obj) {
        this.a = layoutDirection;
        this.b = density;
        this.c = resolver;
        this.d = textStyle;
        this.e = obj;
    }

    public static void a(TextFieldSize textFieldSize, LayoutDirection layoutDirection, Density density, TextStyle textStyle, int i) {
        if ((i & 1) != 0) {
            layoutDirection = textFieldSize.a;
        }
        if ((i & 2) != 0) {
            density = textFieldSize.b;
        }
        FontFamily.Resolver resolver = textFieldSize.c;
        if ((i & 8) != 0) {
            textStyle = textFieldSize.d;
        }
        Object obj = textFieldSize.e;
        LayoutDirection layoutDirection2 = textFieldSize.a;
        MutableState mutableState = textFieldSize.f;
        if (layoutDirection == layoutDirection2 && Intrinsics.a(density, textFieldSize.b) && Intrinsics.a(resolver, textFieldSize.c) && Intrinsics.a(textStyle, textFieldSize.d)) {
            if (!Intrinsics.a(obj, textFieldSize.e)) {
                textFieldSize.e = obj;
                ((SnapshotMutableStateImpl) mutableState).setValue(Boolean.TRUE);
                return;
            }
            return;
        }
        textFieldSize.a = layoutDirection;
        textFieldSize.b = density;
        textFieldSize.c = resolver;
        textFieldSize.d = textStyle;
        ((SnapshotMutableStateImpl) mutableState).setValue(Boolean.TRUE);
    }
}
