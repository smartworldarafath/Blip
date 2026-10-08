package androidx.compose.ui.text.input;

import android.graphics.Rect;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextInputServiceAndroid;
import defpackage.k8;
import defpackage.kb;
import defpackage.la;
import defpackage.p2;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextInputServiceAndroid implements PlatformTextInputService {
    public final View a;
    public final InputMethodManagerImpl b;
    public final androidx.compose.ui.platform.a c;
    public boolean d;
    public Function1 e;
    public Function1 f;
    public TextFieldValue g;
    public ImeOptions h;
    public final ArrayList i;
    public final Lazy j;
    public Rect k;
    public final CursorAnchorInfoController l;
    public final MutableVector m;
    public a n;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TextInputCommand {
        public static final TextInputCommand j;
        public static final TextInputCommand k;
        public static final TextInputCommand l;
        public static final TextInputCommand m;
        public static final /* synthetic */ TextInputCommand[] n;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.ui.text.input.TextInputServiceAndroid$TextInputCommand] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.ui.text.input.TextInputServiceAndroid$TextInputCommand] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.ui.text.input.TextInputServiceAndroid$TextInputCommand] */
        /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.compose.ui.text.input.TextInputServiceAndroid$TextInputCommand] */
        static {
            ?? r0 = new Enum("StartInput", 0);
            j = r0;
            ?? r1 = new Enum("StopInput", 1);
            k = r1;
            ?? r2 = new Enum("ShowKeyboard", 2);
            l = r2;
            ?? r3 = new Enum("HideKeyboard", 3);
            m = r3;
            TextInputCommand[] textInputCommandArr = {r0, r1, r2, r3};
            n = textInputCommandArr;
            EnumEntriesKt.a(textInputCommandArr);
        }

        public static TextInputCommand valueOf(String str) {
            return (TextInputCommand) Enum.valueOf(TextInputCommand.class, str);
        }

        public static TextInputCommand[] values() {
            return (TextInputCommand[]) n.clone();
        }
    }

    public TextInputServiceAndroid(View view, AndroidComposeView androidComposeView, androidx.compose.ui.platform.a aVar) {
        InputMethodManagerImpl inputMethodManagerImpl = new InputMethodManagerImpl(view);
        this.a = view;
        this.b = inputMethodManagerImpl;
        this.c = aVar;
        this.e = new la(2);
        this.f = new la(3);
        this.g = new TextFieldValue(4, TextRange.b, "");
        this.h = ImeOptions.g;
        this.i = new ArrayList();
        this.j = LazyKt.a(LazyThreadSafetyMode.k, new kb(20, this));
        this.l = new CursorAnchorInfoController(androidComposeView, inputMethodManagerImpl);
        this.m = new MutableVector(new TextInputCommand[16]);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void a() {
        i(TextInputCommand.j);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void b() {
        i(TextInputCommand.l);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void c(TextFieldValue textFieldValue, ImeOptions imeOptions, p2 p2Var, Function1 function1) {
        this.d = true;
        this.g = textFieldValue;
        this.h = imeOptions;
        this.e = p2Var;
        this.f = function1;
        i(TextInputCommand.j);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void d() {
        this.d = false;
        this.e = new la(2);
        this.f = new la(3);
        this.k = null;
        i(TextInputCommand.k);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void e() {
        i(TextInputCommand.m);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void f(TextFieldValue textFieldValue, TextFieldValue textFieldValue2) {
        boolean z;
        int i;
        int i2;
        int i3;
        if (TextRange.b(this.g.b, textFieldValue2.b) && Intrinsics.a(this.g.c, textFieldValue2.c)) {
            z = false;
        } else {
            z = true;
        }
        this.g = textFieldValue2;
        int size = this.i.size();
        for (int i4 = 0; i4 < size; i4++) {
            RecordingInputConnection recordingInputConnection = (RecordingInputConnection) ((WeakReference) this.i.get(i4)).get();
            if (recordingInputConnection != null) {
                recordingInputConnection.d = textFieldValue2;
            }
        }
        CursorAnchorInfoController cursorAnchorInfoController = this.l;
        synchronized (cursorAnchorInfoController.c) {
            cursorAnchorInfoController.j = null;
            cursorAnchorInfoController.l = null;
            cursorAnchorInfoController.k = null;
            cursorAnchorInfoController.m = CursorAnchorInfoController$invalidate$1$1.j;
            cursorAnchorInfoController.n = null;
            cursorAnchorInfoController.o = null;
        }
        int i5 = -1;
        if (Intrinsics.a(textFieldValue, textFieldValue2)) {
            if (z) {
                InputMethodManagerImpl inputMethodManagerImpl = this.b;
                int f = TextRange.f(textFieldValue2.b);
                int e = TextRange.e(textFieldValue2.b);
                TextRange textRange = this.g.c;
                if (textRange != null) {
                    i3 = TextRange.f(textRange.a);
                } else {
                    i3 = -1;
                }
                TextRange textRange2 = this.g.c;
                if (textRange2 != null) {
                    i5 = TextRange.e(textRange2.a);
                }
                ((InputMethodManager) inputMethodManagerImpl.b.getValue()).updateSelection(inputMethodManagerImpl.a, f, e, i3, i5);
                return;
            }
            return;
        }
        if (textFieldValue != null && (!Intrinsics.a(textFieldValue.a.k, textFieldValue2.a.k) || (TextRange.b(textFieldValue.b, textFieldValue2.b) && !Intrinsics.a(textFieldValue.c, textFieldValue2.c)))) {
            InputMethodManagerImpl inputMethodManagerImpl2 = this.b;
            ((InputMethodManager) inputMethodManagerImpl2.b.getValue()).restartInput(inputMethodManagerImpl2.a);
            return;
        }
        int size2 = this.i.size();
        for (int i6 = 0; i6 < size2; i6++) {
            RecordingInputConnection recordingInputConnection2 = (RecordingInputConnection) ((WeakReference) this.i.get(i6)).get();
            if (recordingInputConnection2 != null) {
                TextFieldValue textFieldValue3 = this.g;
                InputMethodManagerImpl inputMethodManagerImpl3 = this.b;
                if (recordingInputConnection2.h) {
                    recordingInputConnection2.d = textFieldValue3;
                    if (recordingInputConnection2.f) {
                        ((InputMethodManager) inputMethodManagerImpl3.b.getValue()).updateExtractedText(inputMethodManagerImpl3.a, recordingInputConnection2.e, InputState_androidKt.a(textFieldValue3));
                    }
                    TextRange textRange3 = textFieldValue3.c;
                    long j = textFieldValue3.b;
                    if (textRange3 != null) {
                        i = TextRange.f(textRange3.a);
                    } else {
                        i = -1;
                    }
                    TextRange textRange4 = textFieldValue3.c;
                    if (textRange4 != null) {
                        i2 = TextRange.e(textRange4.a);
                    } else {
                        i2 = -1;
                    }
                    ((InputMethodManager) inputMethodManagerImpl3.b.getValue()).updateSelection(inputMethodManagerImpl3.a, TextRange.f(j), TextRange.e(j), i, i2);
                }
            }
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void g(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, Function1 function1, androidx.compose.ui.geometry.Rect rect, androidx.compose.ui.geometry.Rect rect2) {
        CursorAnchorInfoController cursorAnchorInfoController = this.l;
        synchronized (cursorAnchorInfoController.c) {
            try {
                cursorAnchorInfoController.j = textFieldValue;
                cursorAnchorInfoController.l = offsetMapping;
                cursorAnchorInfoController.k = textLayoutResult;
                cursorAnchorInfoController.m = function1;
                cursorAnchorInfoController.n = rect;
                cursorAnchorInfoController.o = rect2;
                if (!cursorAnchorInfoController.e) {
                    if (cursorAnchorInfoController.d) {
                    }
                }
                cursorAnchorInfoController.a();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void h(androidx.compose.ui.geometry.Rect rect) {
        Rect rect2;
        this.k = new Rect(MathKt.b(rect.a), MathKt.b(rect.b), MathKt.b(rect.c), MathKt.b(rect.d));
        if (this.i.isEmpty() && (rect2 = this.k) != null) {
            this.a.requestRectangleOnScreen(new Rect(rect2));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.compose.ui.text.input.a, java.lang.Runnable] */
    public final void i(TextInputCommand textInputCommand) {
        this.m.b(textInputCommand);
        if (this.n == null) {
            ?? r2 = new Runnable() { // from class: androidx.compose.ui.text.input.a
                /* JADX WARN: Type inference failed for: r11v3, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
                /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
                @Override // java.lang.Runnable
                public final void run() {
                    boolean z;
                    View findFocus;
                    TextInputServiceAndroid textInputServiceAndroid = TextInputServiceAndroid.this;
                    InputMethodManagerImpl inputMethodManagerImpl = textInputServiceAndroid.b;
                    textInputServiceAndroid.n = null;
                    MutableVector mutableVector = textInputServiceAndroid.m;
                    View view = textInputServiceAndroid.a;
                    if (!view.isFocused() && (findFocus = view.getRootView().findFocus()) != null && findFocus.onCheckIsTextEditor()) {
                        mutableVector.g();
                        return;
                    }
                    ?? obj = new Object();
                    ?? obj2 = new Object();
                    Object[] objArr = mutableVector.j;
                    int i = mutableVector.l;
                    for (int i2 = 0; i2 < i; i2++) {
                        TextInputServiceAndroid.TextInputCommand textInputCommand2 = (TextInputServiceAndroid.TextInputCommand) objArr[i2];
                        int ordinal = textInputCommand2.ordinal();
                        if (ordinal != 0) {
                            if (ordinal != 1) {
                                if (ordinal != 2 && ordinal != 3) {
                                    k8.e();
                                    return;
                                } else if (!Intrinsics.a(obj.j, Boolean.FALSE)) {
                                    if (textInputCommand2 == TextInputServiceAndroid.TextInputCommand.l) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    obj2.j = Boolean.valueOf(z);
                                }
                            } else {
                                Boolean bool = Boolean.FALSE;
                                obj.j = bool;
                                obj2.j = bool;
                            }
                        } else {
                            Boolean bool2 = Boolean.TRUE;
                            obj.j = bool2;
                            obj2.j = bool2;
                        }
                    }
                    mutableVector.g();
                    if (Intrinsics.a(obj.j, Boolean.TRUE)) {
                        ((InputMethodManager) inputMethodManagerImpl.b.getValue()).restartInput(inputMethodManagerImpl.a);
                    }
                    Boolean bool3 = (Boolean) obj2.j;
                    if (bool3 != null) {
                        if (bool3.booleanValue()) {
                            inputMethodManagerImpl.c.b();
                        } else {
                            inputMethodManagerImpl.c.a();
                        }
                    }
                    if (Intrinsics.a(obj.j, Boolean.FALSE)) {
                        ((InputMethodManager) inputMethodManagerImpl.b.getValue()).restartInput(inputMethodManagerImpl.a);
                    }
                }
            };
            this.c.execute(r2);
            this.n = r2;
        }
    }
}
