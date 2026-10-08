package androidx.compose.foundation.text;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.EditingBuffer;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.unit.Dp;
import defpackage.la;
import defpackage.t6;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LegacyTextFieldState {
    public final MutableState A;
    public final MutableState B;
    public TextDelegate a;
    public final RecomposeScopeImpl b;
    public final SoftwareKeyboardController c;
    public final EditProcessor d;
    public TextInputSession e;
    public final MutableState f;
    public final MutableState g;
    public LayoutCoordinates h;
    public final MutableState i;
    public AnnotatedString j;
    public final MutableState k;
    public final MutableState l;
    public final MutableState m;
    public final MutableState n;
    public final MutableState o;
    public boolean p;
    public final MutableState q;
    public final KeyboardActionRunner r;
    public final MutableState s;
    public final MutableState t;
    public Function1 u;
    public final t6 v;
    public final t6 w;
    public final t6 x;
    public final AndroidPaint y;
    public long z;

    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Object, androidx.compose.ui.text.input.EditProcessor] */
    public LegacyTextFieldState(TextDelegate textDelegate, RecomposeScopeImpl recomposeScopeImpl, SoftwareKeyboardController softwareKeyboardController) {
        this.a = textDelegate;
        this.b = recomposeScopeImpl;
        this.c = softwareKeyboardController;
        ?? obj = new Object();
        AnnotatedString annotatedString = AnnotatedStringKt.a;
        long j = TextRange.b;
        TextFieldValue textFieldValue = new TextFieldValue(annotatedString, j, (TextRange) null);
        obj.a = textFieldValue;
        obj.b = new EditingBuffer(annotatedString, textFieldValue.b);
        this.d = obj;
        Boolean bool = Boolean.FALSE;
        this.f = SnapshotStateKt.g(bool);
        this.g = SnapshotStateKt.g(new Dp(0.0f));
        this.i = SnapshotStateKt.g(null);
        this.k = SnapshotStateKt.g(HandleState.j);
        this.l = SnapshotStateKt.g(bool);
        this.m = SnapshotStateKt.g(bool);
        this.n = SnapshotStateKt.g(bool);
        this.o = SnapshotStateKt.g(bool);
        int i = 1;
        this.p = true;
        this.q = SnapshotStateKt.g(Boolean.TRUE);
        this.r = new KeyboardActionRunner(softwareKeyboardController);
        this.s = SnapshotStateKt.g(bool);
        this.t = SnapshotStateKt.g(bool);
        this.u = new la(i);
        this.v = new t6(this, i);
        this.w = new t6(this, 2);
        this.x = new t6(this, 3);
        this.y = AndroidPaint_androidKt.a();
        this.z = Color.h;
        this.A = SnapshotStateKt.g(new TextRange(j));
        this.B = SnapshotStateKt.g(new TextRange(j));
    }

    public final HandleState a() {
        return (HandleState) ((SnapshotMutableStateImpl) this.k).getValue();
    }

    public final boolean b() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.f).getValue()).booleanValue();
    }

    public final LayoutCoordinates c() {
        LayoutCoordinates layoutCoordinates = this.h;
        if (layoutCoordinates != null && layoutCoordinates.o()) {
            return layoutCoordinates;
        }
        return null;
    }

    public final TextLayoutResultProxy d() {
        return (TextLayoutResultProxy) ((SnapshotMutableStateImpl) this.i).getValue();
    }

    public final void e(long j) {
        ((SnapshotMutableStateImpl) this.B).setValue(new TextRange(j));
    }

    public final void f(long j) {
        ((SnapshotMutableStateImpl) this.A).setValue(new TextRange(j));
    }
}
