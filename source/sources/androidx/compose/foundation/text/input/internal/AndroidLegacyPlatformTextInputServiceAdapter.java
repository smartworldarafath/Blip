package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.text.handwriting.StylusHandwriting_androidKt;
import androidx.compose.foundation.text.input.internal.LegacyPlatformTextInputServiceAdapter;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import defpackage.o;
import defpackage.p2;
import java.lang.ref.WeakReference;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidLegacyPlatformTextInputServiceAdapter extends LegacyPlatformTextInputServiceAdapter {
    public Job b;
    public LegacyTextInputMethodRequest c;
    public SharedFlowImpl d;

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void a() {
        k(null);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void c(TextFieldValue textFieldValue, ImeOptions imeOptions, p2 p2Var, Function1 function1) {
        k(new o(textFieldValue, this, imeOptions, p2Var, function1, 1));
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void d() {
        Job job = this.b;
        if (job != null) {
            ((JobSupport) job).n(null);
        }
        this.b = null;
        MutableSharedFlow j = j();
        if (j != null) {
            SharedFlowImpl sharedFlowImpl = (SharedFlowImpl) j;
            synchronized (sharedFlowImpl) {
                sharedFlowImpl.v(sharedFlowImpl.p() + sharedFlowImpl.t, sharedFlowImpl.s, sharedFlowImpl.p() + sharedFlowImpl.t, sharedFlowImpl.p() + sharedFlowImpl.t + sharedFlowImpl.u);
            }
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void f(TextFieldValue textFieldValue, TextFieldValue textFieldValue2) {
        boolean z;
        int i;
        int i2;
        int i3;
        LegacyTextInputMethodRequest legacyTextInputMethodRequest = this.c;
        if (legacyTextInputMethodRequest != null) {
            if (TextRange.b(legacyTextInputMethodRequest.h.b, textFieldValue2.b) && Intrinsics.a(legacyTextInputMethodRequest.h.c, textFieldValue2.c)) {
                z = false;
            } else {
                z = true;
            }
            legacyTextInputMethodRequest.h = textFieldValue2;
            int size = legacyTextInputMethodRequest.j.size();
            for (int i4 = 0; i4 < size; i4++) {
                RecordingInputConnection recordingInputConnection = (RecordingInputConnection) ((WeakReference) legacyTextInputMethodRequest.j.get(i4)).get();
                if (recordingInputConnection != null) {
                    recordingInputConnection.g = textFieldValue2;
                }
            }
            LegacyCursorAnchorInfoController legacyCursorAnchorInfoController = legacyTextInputMethodRequest.m;
            synchronized (legacyCursorAnchorInfoController.c) {
                legacyCursorAnchorInfoController.j = null;
                legacyCursorAnchorInfoController.l = null;
                legacyCursorAnchorInfoController.k = null;
                legacyCursorAnchorInfoController.m = null;
                legacyCursorAnchorInfoController.n = null;
            }
            int i5 = -1;
            if (Intrinsics.a(textFieldValue, textFieldValue2)) {
                if (z) {
                    InputMethodManagerImpl inputMethodManagerImpl = legacyTextInputMethodRequest.b;
                    int f = TextRange.f(textFieldValue2.b);
                    int e = TextRange.e(textFieldValue2.b);
                    TextRange textRange = legacyTextInputMethodRequest.h.c;
                    if (textRange != null) {
                        i3 = TextRange.f(textRange.a);
                    } else {
                        i3 = -1;
                    }
                    TextRange textRange2 = legacyTextInputMethodRequest.h.c;
                    if (textRange2 != null) {
                        i5 = TextRange.e(textRange2.a);
                    }
                    inputMethodManagerImpl.a().updateSelection(inputMethodManagerImpl.a, f, e, i3, i5);
                    return;
                }
                return;
            }
            if (textFieldValue != null && (!Intrinsics.a(textFieldValue.a.k, textFieldValue2.a.k) || (TextRange.b(textFieldValue.b, textFieldValue2.b) && !Intrinsics.a(textFieldValue.c, textFieldValue2.c)))) {
                InputMethodManagerImpl inputMethodManagerImpl2 = legacyTextInputMethodRequest.b;
                inputMethodManagerImpl2.a().restartInput(inputMethodManagerImpl2.a);
                return;
            }
            int size2 = legacyTextInputMethodRequest.j.size();
            for (int i6 = 0; i6 < size2; i6++) {
                RecordingInputConnection recordingInputConnection2 = (RecordingInputConnection) ((WeakReference) legacyTextInputMethodRequest.j.get(i6)).get();
                if (recordingInputConnection2 != null) {
                    TextFieldValue textFieldValue3 = legacyTextInputMethodRequest.h;
                    InputMethodManagerImpl inputMethodManagerImpl3 = legacyTextInputMethodRequest.b;
                    if (recordingInputConnection2.k) {
                        recordingInputConnection2.g = textFieldValue3;
                        if (recordingInputConnection2.i) {
                            inputMethodManagerImpl3.a().updateExtractedText(inputMethodManagerImpl3.a, recordingInputConnection2.h, RecordingInputConnection_androidKt.a(textFieldValue3));
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
                        inputMethodManagerImpl3.a().updateSelection(inputMethodManagerImpl3.a, TextRange.f(j), TextRange.e(j), i, i2);
                    }
                }
            }
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void g(TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, Function1 function1, Rect rect, Rect rect2) {
        LegacyTextInputMethodRequest legacyTextInputMethodRequest = this.c;
        if (legacyTextInputMethodRequest != null) {
            LegacyCursorAnchorInfoController legacyCursorAnchorInfoController = legacyTextInputMethodRequest.m;
            synchronized (legacyCursorAnchorInfoController.c) {
                try {
                    legacyCursorAnchorInfoController.j = textFieldValue;
                    legacyCursorAnchorInfoController.l = offsetMapping;
                    legacyCursorAnchorInfoController.k = textLayoutResult;
                    legacyCursorAnchorInfoController.m = rect;
                    legacyCursorAnchorInfoController.n = rect2;
                    if (!legacyCursorAnchorInfoController.e) {
                        if (legacyCursorAnchorInfoController.d) {
                        }
                    }
                    legacyCursorAnchorInfoController.a();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public final void h(Rect rect) {
        android.graphics.Rect rect2;
        LegacyTextInputMethodRequest legacyTextInputMethodRequest = this.c;
        if (legacyTextInputMethodRequest != null) {
            legacyTextInputMethodRequest.l = new android.graphics.Rect(MathKt.b(rect.a), MathKt.b(rect.b), MathKt.b(rect.c), MathKt.b(rect.d));
            if (legacyTextInputMethodRequest.j.isEmpty() && (rect2 = legacyTextInputMethodRequest.l) != null) {
                legacyTextInputMethodRequest.a.requestRectangleOnScreen(new android.graphics.Rect(rect2));
            }
        }
    }

    public final MutableSharedFlow j() {
        SharedFlowImpl sharedFlowImpl = this.d;
        if (sharedFlowImpl != null) {
            return sharedFlowImpl;
        }
        if (!StylusHandwriting_androidKt.a) {
            return null;
        }
        SharedFlowImpl a = SharedFlowKt.a(0, 2, BufferOverflow.l);
        this.d = a;
        return a;
    }

    public final void k(o oVar) {
        LegacyPlatformTextInputServiceAdapter.LegacyPlatformTextInputNode legacyPlatformTextInputNode = this.a;
        if (legacyPlatformTextInputNode == null) {
            return;
        }
        Job job = null;
        AndroidLegacyPlatformTextInputServiceAdapter$startInput$2 androidLegacyPlatformTextInputServiceAdapter$startInput$2 = new AndroidLegacyPlatformTextInputServiceAdapter$startInput$2(oVar, this, legacyPlatformTextInputNode, null);
        LegacyAdaptingPlatformTextInputModifierNode legacyAdaptingPlatformTextInputModifierNode = (LegacyAdaptingPlatformTextInputModifierNode) legacyPlatformTextInputNode;
        if (legacyAdaptingPlatformTextInputModifierNode.w) {
            job = BuildersKt.c(legacyAdaptingPlatformTextInputModifierNode.M0(), null, CoroutineStart.m, new LegacyAdaptingPlatformTextInputModifierNode$launchTextInputSession$1(legacyAdaptingPlatformTextInputModifierNode, androidLegacyPlatformTextInputServiceAdapter$startInput$2, null), 1);
        }
        this.b = job;
    }
}
