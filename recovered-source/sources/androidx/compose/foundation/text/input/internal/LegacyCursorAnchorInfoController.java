package androidx.compose.foundation.text.input.internal;

import android.os.Build;
import android.view.View;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.EditorBoundsInfo;
import android.view.inputmethod.InputMethodManager;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidMatrixConversions_androidKt;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import defpackage.l;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LegacyCursorAnchorInfoController {
    public final Function1 a;
    public final InputMethodManagerImpl b;
    public boolean d;
    public boolean e;
    public boolean f;
    public boolean g;
    public boolean h;
    public boolean i;
    public TextFieldValue j;
    public TextLayoutResult k;
    public OffsetMapping l;
    public Rect m;
    public Rect n;
    public final Object c = new Object();
    public final CursorAnchorInfo.Builder o = new CursorAnchorInfo.Builder();
    public final float[] p = Matrix.a();
    public final android.graphics.Matrix q = new android.graphics.Matrix();

    public LegacyCursorAnchorInfoController(Function1 function1, InputMethodManagerImpl inputMethodManagerImpl) {
        this.a = function1;
        this.b = inputMethodManagerImpl;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x015e, code lost:
    
        if (androidx.compose.foundation.text.input.internal.LegacyCursorAnchorInfoBuilder_androidKt.a(r10, r5, r13) == false) goto L50;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a() {
        boolean z;
        boolean z2;
        EditorBoundsInfo.Builder editorBounds;
        EditorBoundsInfo.Builder handwritingBounds;
        EditorBoundsInfo build;
        int i;
        int i2;
        boolean z3;
        int i3;
        InputMethodManagerImpl inputMethodManagerImpl = this.b;
        InputMethodManager a = inputMethodManagerImpl.a();
        View view = inputMethodManagerImpl.a;
        if (a.isActive(view) && this.j != null && this.l != null && this.k != null && this.m != null && this.n != null) {
            float[] fArr = this.p;
            Matrix.d(fArr);
            ((AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$request$1) this.a).b(new Matrix(fArr));
            Rect rect = this.n;
            rect.getClass();
            float f = -rect.a;
            Rect rect2 = this.n;
            rect2.getClass();
            Matrix.f(fArr, f, -rect2.b);
            android.graphics.Matrix matrix = this.q;
            AndroidMatrixConversions_androidKt.a(matrix, fArr);
            TextFieldValue textFieldValue = this.j;
            textFieldValue.getClass();
            long j = textFieldValue.b;
            OffsetMapping offsetMapping = this.l;
            offsetMapping.getClass();
            TextLayoutResult textLayoutResult = this.k;
            textLayoutResult.getClass();
            MultiParagraph multiParagraph = textLayoutResult.b;
            Rect rect3 = this.m;
            rect3.getClass();
            Rect rect4 = this.n;
            rect4.getClass();
            boolean z4 = this.f;
            boolean z5 = this.g;
            boolean z6 = this.h;
            boolean z7 = this.i;
            CursorAnchorInfo.Builder builder = this.o;
            builder.reset();
            builder.setMatrix(matrix);
            TextRange textRange = textFieldValue.c;
            int f2 = TextRange.f(j);
            builder.setSelectionRange(f2, TextRange.e(j));
            if (z4 && f2 >= 0) {
                int b = offsetMapping.b(f2);
                Rect c = textLayoutResult.c(b);
                z = z5;
                z2 = z6;
                float c2 = RangesKt.c(c.a, 0.0f, (int) (textLayoutResult.c >> 32));
                boolean a2 = LegacyCursorAnchorInfoBuilder_androidKt.a(rect3, c2, c.b);
                boolean a3 = LegacyCursorAnchorInfoBuilder_androidKt.a(rect3, c2, c.d);
                if (textLayoutResult.a(b) == ResolvedTextDirection.k) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (!a2 && !a3) {
                    i3 = 0;
                } else {
                    i3 = 1;
                }
                if (!a2 || !a3) {
                    i3 |= 2;
                }
                if (z3) {
                    i3 |= 4;
                }
                int i4 = i3;
                float f3 = c.b;
                float f4 = c.d;
                builder.setInsertionMarkerLocation(c2, f3, f4, f4, i4);
                builder = builder;
            } else {
                z = z5;
                z2 = z6;
            }
            if (z) {
                int i5 = -1;
                if (textRange != null) {
                    i = TextRange.f(textRange.a);
                } else {
                    i = -1;
                }
                if (textRange != null) {
                    i5 = TextRange.e(textRange.a);
                }
                if (i >= 0 && i < i5) {
                    builder.setComposingText(i, textFieldValue.a.k.subSequence(i, i5));
                    int b2 = offsetMapping.b(i);
                    int b3 = offsetMapping.b(i5);
                    float[] fArr2 = new float[(b3 - b2) * 4];
                    multiParagraph.a(TextRangeKt.a(b2, b3), fArr2);
                    while (i < i5) {
                        int b4 = offsetMapping.b(i);
                        int i6 = (b4 - b2) * 4;
                        CursorAnchorInfo.Builder builder2 = builder;
                        float f5 = fArr2[i6];
                        int i7 = b2;
                        float f6 = fArr2[i6 + 1];
                        int i8 = i5;
                        float f7 = fArr2[i6 + 2];
                        float f8 = fArr2[i6 + 3];
                        boolean g = rect3.g(new Rect(f5, f6, f7, f8));
                        if (LegacyCursorAnchorInfoBuilder_androidKt.a(rect3, f5, f6)) {
                            i2 = g;
                        }
                        i2 = (g ? 1 : 0) | 2;
                        if (textLayoutResult.a(b4) == ResolvedTextDirection.k) {
                            i2 = (i2 == true ? 1 : 0) | 4;
                        }
                        int i9 = i;
                        builder2.addCharacterBounds(i9, f5, f6, f7, f8, i2);
                        builder = builder2;
                        i = i9 + 1;
                        b2 = i7;
                        i5 = i8;
                    }
                }
            }
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 33 && z2) {
                editorBounds = l.m().setEditorBounds(RectHelper_androidKt.b(rect4));
                handwritingBounds = editorBounds.setHandwritingBounds(RectHelper_androidKt.b(rect4));
                build = handwritingBounds.build();
                builder.setEditorBoundsInfo(build);
            }
            if (i10 >= 34 && z7 && !rect3.f()) {
                int i11 = multiParagraph.f - 1;
                if (i11 < 0) {
                    i11 = 0;
                }
                int d = RangesKt.d(multiParagraph.e(rect3.b), 0, i11);
                int d2 = RangesKt.d(multiParagraph.e(rect3.d), 0, i11);
                if (d <= d2) {
                    while (true) {
                        builder.addVisibleLineBounds(textLayoutResult.d(d), multiParagraph.f(d), textLayoutResult.e(d), multiParagraph.b(d));
                        if (d == d2) {
                            break;
                        } else {
                            d++;
                        }
                    }
                }
            }
            inputMethodManagerImpl.a().updateCursorAnchorInfo(view, builder.build());
            this.e = false;
        }
    }
}
