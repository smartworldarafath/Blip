package androidx.compose.ui.text.input;

import android.os.Build;
import android.view.View;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.EditorBoundsInfo;
import android.view.inputmethod.InputMethodManager;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidMatrixConversions_androidKt;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import defpackage.l;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@Deprecated
/* loaded from: classes.dex */
public final class CursorAnchorInfoController {
    public final AndroidComposeView a;
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
    public Rect n;
    public Rect o;
    public final Object c = new Object();
    public Function1 m = CursorAnchorInfoController$textFieldToRootTransform$1.j;
    public final CursorAnchorInfo.Builder p = new CursorAnchorInfo.Builder();
    public final float[] q = Matrix.a();
    public final android.graphics.Matrix r = new android.graphics.Matrix();

    public CursorAnchorInfoController(AndroidComposeView androidComposeView, InputMethodManagerImpl inputMethodManagerImpl) {
        this.a = androidComposeView;
        this.b = inputMethodManagerImpl;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x013a, code lost:
    
        if (androidx.compose.ui.text.input.CursorAnchorInfoBuilder_androidKt.a(r10, r5, r13) == false) goto L40;
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
        Lazy lazy = inputMethodManagerImpl.b;
        InputMethodManager inputMethodManager = (InputMethodManager) lazy.getValue();
        View view = inputMethodManagerImpl.a;
        if (!inputMethodManager.isActive(view)) {
            return;
        }
        Function1 function1 = this.m;
        float[] fArr = this.q;
        function1.b(new Matrix(fArr));
        this.a.p(fArr);
        android.graphics.Matrix matrix = this.r;
        AndroidMatrixConversions_androidKt.a(matrix, fArr);
        TextFieldValue textFieldValue = this.j;
        textFieldValue.getClass();
        long j = textFieldValue.b;
        OffsetMapping offsetMapping = this.l;
        offsetMapping.getClass();
        TextLayoutResult textLayoutResult = this.k;
        textLayoutResult.getClass();
        MultiParagraph multiParagraph = textLayoutResult.b;
        Rect rect = this.n;
        rect.getClass();
        Rect rect2 = this.o;
        rect2.getClass();
        boolean z4 = this.f;
        boolean z5 = this.g;
        boolean z6 = this.h;
        boolean z7 = this.i;
        CursorAnchorInfo.Builder builder = this.p;
        builder.reset();
        builder.setMatrix(matrix);
        TextRange textRange = textFieldValue.c;
        int f = TextRange.f(j);
        builder.setSelectionRange(f, TextRange.e(j));
        if (z4 && f >= 0) {
            int b = offsetMapping.b(f);
            Rect c = textLayoutResult.c(b);
            z = z5;
            z2 = z6;
            float c2 = RangesKt.c(c.a, 0.0f, (int) (textLayoutResult.c >> 32));
            boolean a = CursorAnchorInfoBuilder_androidKt.a(rect, c2, c.b);
            boolean a2 = CursorAnchorInfoBuilder_androidKt.a(rect, c2, c.d);
            if (textLayoutResult.a(b) == ResolvedTextDirection.k) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (!a && !a2) {
                i3 = 0;
            } else {
                i3 = 1;
            }
            if (!a || !a2) {
                i3 |= 2;
            }
            if (z3) {
                i3 |= 4;
            }
            int i4 = i3;
            float f2 = c.b;
            float f3 = c.d;
            builder.setInsertionMarkerLocation(c2, f2, f3, f3, i4);
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
                    float f4 = fArr2[i6];
                    int i7 = b2;
                    float f5 = fArr2[i6 + 1];
                    int i8 = i5;
                    float f6 = fArr2[i6 + 2];
                    float f7 = fArr2[i6 + 3];
                    boolean g = rect.g(new Rect(f4, f5, f6, f7));
                    if (CursorAnchorInfoBuilder_androidKt.a(rect, f4, f5)) {
                        i2 = g;
                    }
                    i2 = (g ? 1 : 0) | 2;
                    if (textLayoutResult.a(b4) == ResolvedTextDirection.k) {
                        i2 = (i2 == true ? 1 : 0) | 4;
                    }
                    int i9 = i;
                    builder2.addCharacterBounds(i9, f4, f5, f6, f7, i2);
                    builder = builder2;
                    i = i9 + 1;
                    b2 = i7;
                    i5 = i8;
                }
            }
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 33 && z2) {
            editorBounds = l.m().setEditorBounds(RectHelper_androidKt.b(rect2));
            handwritingBounds = editorBounds.setHandwritingBounds(RectHelper_androidKt.b(rect2));
            build = handwritingBounds.build();
            builder.setEditorBoundsInfo(build);
        }
        if (i10 >= 34 && z7 && !rect.f()) {
            int i11 = multiParagraph.f - 1;
            if (i11 < 0) {
                i11 = 0;
            }
            int d = RangesKt.d(multiParagraph.e(rect.b), 0, i11);
            int d2 = RangesKt.d(multiParagraph.e(rect.d), 0, i11);
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
        ((InputMethodManager) lazy.getValue()).updateCursorAnchorInfo(view, builder.build());
        this.e = false;
    }
}
