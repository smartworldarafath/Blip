package androidx.compose.ui.text.input;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextLayoutResult;
import defpackage.p2;
import kotlin.Deprecated;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@Deprecated
/* loaded from: classes.dex */
public interface PlatformTextInputService {
    void a();

    void b();

    void c(TextFieldValue textFieldValue, ImeOptions imeOptions, p2 p2Var, Function1 function1);

    void d();

    void e();

    void f(TextFieldValue textFieldValue, TextFieldValue textFieldValue2);

    void g(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, Function1 function1, Rect rect, Rect rect2);

    void h(Rect rect);
}
