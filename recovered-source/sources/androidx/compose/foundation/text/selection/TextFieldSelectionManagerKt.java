package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.LongPressTextDragObserverKt;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.selection.SelectionAdjustment;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.MultiParagraphKt;
import androidx.compose.ui.text.ParagraphInfo;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import defpackage.c2;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TextFieldSelectionManagerKt {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Handle.values().length];
            try {
                Handle handle = Handle.j;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Handle handle2 = Handle.j;
                iArr[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                Handle handle3 = Handle.j;
                iArr[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static final void a(final boolean z, ResolvedTextDirection resolvedTextDirection, final TextFieldSelectionManager textFieldSelectionManager, Composer composer, int i) {
        int i2;
        boolean z2;
        boolean z3;
        boolean z4;
        long j;
        TextLayoutResultProxy d;
        int i3;
        int i4;
        int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1344558920);
        if ((i & 6) == 0) {
            if (gapComposer.g(z)) {
                i5 = 4;
            } else {
                i5 = 2;
            }
            i2 = i5 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.d(resolvedTextDirection.ordinal())) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i2 |= i4;
        }
        if ((i & 384) == 0) {
            if (gapComposer.h(textFieldSelectionManager)) {
                i3 = 256;
            } else {
                i3 = 128;
            }
            i2 |= i3;
        }
        if ((i2 & 147) != 146) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i2 & 1, z2)) {
            int i6 = i2 & 14;
            if (i6 == 4) {
                z3 = true;
            } else {
                z3 = false;
            }
            boolean f = z3 | gapComposer.f(textFieldSelectionManager);
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (f || K == composer$Companion$Empty$1) {
                K = new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$handleDragObserver$1
                    @Override // androidx.compose.foundation.text.TextDragObserver
                    public final void b() {
                        TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                        ((SnapshotMutableStateImpl) textFieldSelectionManager2.q).setValue(null);
                        ((SnapshotMutableStateImpl) textFieldSelectionManager2.r).setValue(null);
                        textFieldSelectionManager2.u(true);
                    }

                    @Override // androidx.compose.foundation.text.TextDragObserver
                    public final void c() {
                        TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                        ((SnapshotMutableStateImpl) textFieldSelectionManager2.q).setValue(null);
                        ((SnapshotMutableStateImpl) textFieldSelectionManager2.r).setValue(null);
                        textFieldSelectionManager2.u(true);
                    }

                    @Override // androidx.compose.foundation.text.TextDragObserver
                    public final void d() {
                        Handle handle;
                        TextLayoutResultProxy d2;
                        boolean z5 = z;
                        if (z5) {
                            handle = Handle.k;
                        } else {
                            handle = Handle.l;
                        }
                        TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                        ((SnapshotMutableStateImpl) textFieldSelectionManager2.q).setValue(handle);
                        long a = SelectionHandlesKt.a(textFieldSelectionManager2.m(z5));
                        LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager2.d;
                        if (legacyTextFieldState != null && (d2 = legacyTextFieldState.d()) != null) {
                            long e = d2.e(a);
                            textFieldSelectionManager2.n = e;
                            ((SnapshotMutableStateImpl) textFieldSelectionManager2.r).setValue(new Offset(e));
                            textFieldSelectionManager2.p = 0L;
                            textFieldSelectionManager2.s = -1;
                            LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager2.d;
                            if (legacyTextFieldState2 != null) {
                                ((SnapshotMutableStateImpl) legacyTextFieldState2.q).setValue(Boolean.TRUE);
                            }
                            textFieldSelectionManager2.u(false);
                        }
                    }

                    @Override // androidx.compose.foundation.text.TextDragObserver
                    public final void e(long j2) {
                        TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                        long f2 = Offset.f(textFieldSelectionManager2.p, j2);
                        textFieldSelectionManager2.p = f2;
                        ((SnapshotMutableStateImpl) textFieldSelectionManager2.r).setValue(new Offset(Offset.f(textFieldSelectionManager2.n, f2)));
                        TextFieldValue o = textFieldSelectionManager2.o();
                        Offset j3 = textFieldSelectionManager2.j();
                        j3.getClass();
                        TextFieldSelectionManager.c(textFieldSelectionManager2, o, j3.a, false, z, SelectionAdjustment.Companion.d, true, new HapticFeedbackType(9));
                        textFieldSelectionManager2.u(false);
                    }

                    @Override // androidx.compose.foundation.text.TextDragObserver
                    public final void onCancel() {
                    }

                    @Override // androidx.compose.foundation.text.TextDragObserver
                    public final void a(long j2, SelectionAdjustment selectionAdjustment) {
                    }
                };
                gapComposer.g0(K);
            }
            final TextDragObserver textDragObserver = (TextDragObserver) K;
            boolean h = gapComposer.h(textFieldSelectionManager);
            if (i6 == 4) {
                z4 = true;
            } else {
                z4 = false;
            }
            boolean z5 = z4 | h;
            Object K2 = gapComposer.K();
            if (z5 || K2 == composer$Companion$Empty$1) {
                K2 = new OffsetProvider() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt$TextFieldSelectionHandle$1$1
                    @Override // androidx.compose.foundation.text.selection.OffsetProvider
                    public final long a() {
                        return TextFieldSelectionManager.this.m(z);
                    }
                };
                gapComposer.g0(K2);
            }
            OffsetProvider offsetProvider = (OffsetProvider) K2;
            boolean g = TextRange.g(textFieldSelectionManager.o().b);
            if (z) {
                j = textFieldSelectionManager.o().b >> 32;
            } else {
                j = textFieldSelectionManager.o().b & 4294967295L;
            }
            int i7 = (int) j;
            LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.d;
            float f2 = 0.0f;
            if (legacyTextFieldState != null && (d = legacyTextFieldState.d()) != null) {
                TextLayoutResult textLayoutResult = d.a;
                if (i7 >= 0) {
                    TextLayoutInput textLayoutInput = textLayoutResult.a;
                    MultiParagraph multiParagraph = textLayoutResult.b;
                    if (textLayoutInput.a.k.length() != 0) {
                        int min = Math.min(multiParagraph.d(i7), Math.min(multiParagraph.b - 1, multiParagraph.f - 1));
                        if (i7 <= multiParagraph.c(min, false)) {
                            multiParagraph.m(min);
                            ArrayList arrayList = multiParagraph.h;
                            ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(MultiParagraphKt.b(min, arrayList));
                            f2 = paragraphInfo.a.d.i(min - paragraphInfo.d);
                        }
                    }
                }
            }
            float f3 = f2;
            boolean h2 = gapComposer.h(textDragObserver);
            Object K3 = gapComposer.K();
            if (h2 || K3 == composer$Companion$Empty$1) {
                K3 = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt$TextFieldSelectionHandle$2$1
                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        Object a = LongPressTextDragObserverKt.a(pointerInputScope, TextDragObserver.this, continuation);
                        if (a == CoroutineSingletons.j) {
                            return a;
                        }
                        return Unit.a;
                    }
                };
                gapComposer.g0(K3);
            }
            AndroidSelectionHandles_androidKt.b(offsetProvider, z, resolvedTextDirection, g, 0L, f3, SuspendingPointerInputFilterKt.a(Modifier.Companion.b, textDragObserver, (PointerInputEventHandler) K3), gapComposer, (i2 << 3) & 1008);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new c2(z, resolvedTextDirection, textFieldSelectionManager, i);
        }
    }
}
