package androidx.compose.ui.platform;

import android.graphics.Matrix;
import android.view.View;
import androidx.compose.ui.graphics.AndroidMatrixConversions_androidKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class CalculateMatrixToWindowApi21 {
    public static void a(View view, float[] fArr, float[] fArr2, int[] iArr) {
        Object parent = view.getParent();
        if (parent instanceof View) {
            a((View) parent, fArr, fArr2, iArr);
            AndroidComposeView_androidKt.b(fArr, -view.getScrollX(), -view.getScrollY(), fArr2);
            AndroidComposeView_androidKt.b(fArr, view.getLeft(), view.getTop(), fArr2);
        } else {
            view.getLocationInWindow(iArr);
            AndroidComposeView_androidKt.b(fArr, -view.getScrollX(), -view.getScrollY(), fArr2);
            AndroidComposeView_androidKt.b(fArr, iArr[0], iArr[1], fArr2);
        }
        Matrix matrix = view.getMatrix();
        if (!matrix.isIdentity()) {
            AndroidMatrixConversions_androidKt.b(matrix, fArr2);
            AndroidComposeView_androidKt.d(fArr, fArr2);
        }
    }
}
