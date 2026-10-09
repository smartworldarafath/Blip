package com.google.android.material.shape;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import com.google.android.material.shadow.ShadowRenderer;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ShapePath {
    public float a;
    public float b;
    public float c;
    public float d;
    public float e;
    public final ArrayList f = new ArrayList();
    public final ArrayList g = new ArrayList();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ArcShadowOperation extends ShadowCompatOperation {
        public final PathArcOperation b;

        public ArcShadowOperation(PathArcOperation pathArcOperation) {
            this.b = pathArcOperation;
        }

        @Override // com.google.android.material.shape.ShapePath.ShadowCompatOperation
        public final void a(Matrix matrix, ShadowRenderer shadowRenderer, int i, Canvas canvas) {
            boolean z;
            PathArcOperation pathArcOperation = this.b;
            float f = pathArcOperation.f;
            float f2 = pathArcOperation.g;
            RectF rectF = new RectF(pathArcOperation.b, pathArcOperation.c, pathArcOperation.d, pathArcOperation.e);
            Paint paint = shadowRenderer.b;
            if (f2 < 0.0f) {
                z = true;
            } else {
                z = false;
            }
            Path path = shadowRenderer.g;
            int[] iArr = ShadowRenderer.k;
            if (z) {
                iArr[0] = 0;
                iArr[1] = shadowRenderer.f;
                iArr[2] = shadowRenderer.e;
                iArr[3] = shadowRenderer.d;
            } else {
                path.rewind();
                path.moveTo(rectF.centerX(), rectF.centerY());
                path.arcTo(rectF, f, f2);
                path.close();
                float f3 = -i;
                rectF.inset(f3, f3);
                iArr[0] = 0;
                iArr[1] = shadowRenderer.d;
                iArr[2] = shadowRenderer.e;
                iArr[3] = shadowRenderer.f;
            }
            float width = rectF.width() / 2.0f;
            if (width <= 0.0f) {
                return;
            }
            float f4 = 1.0f - (i / width);
            float[] fArr = ShadowRenderer.l;
            fArr[1] = f4;
            fArr[2] = ((1.0f - f4) / 2.0f) + f4;
            paint.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), width, iArr, fArr, Shader.TileMode.CLAMP));
            canvas.save();
            canvas.concat(matrix);
            canvas.scale(1.0f, rectF.height() / rectF.width());
            if (!z) {
                canvas.clipPath(path, Region.Op.DIFFERENCE);
                canvas.drawPath(path, shadowRenderer.h);
            }
            canvas.drawArc(rectF, f, f2, true, paint);
            canvas.restore();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class LineShadowOperation extends ShadowCompatOperation {
        public final PathLineOperation b;
        public final float c;
        public final float d;

        public LineShadowOperation(PathLineOperation pathLineOperation, float f, float f2) {
            this.b = pathLineOperation;
            this.c = f;
            this.d = f2;
        }

        @Override // com.google.android.material.shape.ShapePath.ShadowCompatOperation
        public final void a(Matrix matrix, ShadowRenderer shadowRenderer, int i, Canvas canvas) {
            PathLineOperation pathLineOperation = this.b;
            float f = pathLineOperation.c;
            float f2 = this.d;
            float f3 = pathLineOperation.b;
            float f4 = this.c;
            RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(f - f2, f3 - f4), 0.0f);
            Matrix matrix2 = new Matrix(matrix);
            matrix2.preTranslate(f4, f2);
            matrix2.preRotate(b());
            shadowRenderer.getClass();
            rectF.bottom += i;
            rectF.offset(0.0f, -i);
            int i2 = shadowRenderer.f;
            int[] iArr = ShadowRenderer.i;
            iArr[0] = i2;
            iArr[1] = shadowRenderer.e;
            iArr[2] = shadowRenderer.d;
            Paint paint = shadowRenderer.c;
            float f5 = rectF.left;
            paint.setShader(new LinearGradient(f5, rectF.top, f5, rectF.bottom, iArr, ShadowRenderer.j, Shader.TileMode.CLAMP));
            canvas.save();
            canvas.concat(matrix2);
            canvas.drawRect(rectF, paint);
            canvas.restore();
        }

        public final float b() {
            PathLineOperation pathLineOperation = this.b;
            return (float) Math.toDegrees(Math.atan((pathLineOperation.c - this.d) / (pathLineOperation.b - this.c)));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class PathArcOperation extends PathOperation {
        public static final RectF h = new RectF();
        public final float b;
        public final float c;
        public final float d;
        public final float e;
        public float f;
        public float g;

        public PathArcOperation(float f, float f2, float f3, float f4) {
            this.b = f;
            this.c = f2;
            this.d = f3;
            this.e = f4;
        }

        @Override // com.google.android.material.shape.ShapePath.PathOperation
        public final void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            float f = this.d;
            float f2 = this.e;
            RectF rectF = h;
            rectF.set(this.b, this.c, f, f2);
            path.arcTo(rectF, this.f, this.g, false);
            path.transform(matrix);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class PathLineOperation extends PathOperation {
        public float b;
        public float c;

        @Override // com.google.android.material.shape.ShapePath.PathOperation
        public final void a(Matrix matrix, Path path) {
            Matrix matrix2 = this.a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.b, this.c);
            path.transform(matrix);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class PathOperation {
        public final Matrix a = new Matrix();

        public abstract void a(Matrix matrix, Path path);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class ShadowCompatOperation {
        public static final Matrix a = new Matrix();

        public abstract void a(Matrix matrix, ShadowRenderer shadowRenderer, int i, Canvas canvas);
    }

    public ShapePath() {
        d(0.0f, 270.0f, 0.0f);
    }

    public final void a(float f) {
        float f2 = this.d;
        if (f2 != f) {
            float f3 = ((f - f2) + 360.0f) % 360.0f;
            if (f3 > 180.0f) {
                return;
            }
            float f4 = this.b;
            float f5 = this.c;
            PathArcOperation pathArcOperation = new PathArcOperation(f4, f5, f4, f5);
            pathArcOperation.f = this.d;
            pathArcOperation.g = f3;
            this.g.add(new ArcShadowOperation(pathArcOperation));
            this.d = f;
        }
    }

    public final void b(Matrix matrix, Path path) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((PathOperation) arrayList.get(i)).a(matrix, path);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.material.shape.ShapePath$PathOperation, com.google.android.material.shape.ShapePath$PathLineOperation, java.lang.Object] */
    public final void c(float f, float f2) {
        ?? pathOperation = new PathOperation();
        pathOperation.b = f;
        pathOperation.c = f2;
        this.f.add(pathOperation);
        LineShadowOperation lineShadowOperation = new LineShadowOperation(pathOperation, this.b, this.c);
        float b = lineShadowOperation.b() + 270.0f;
        float b2 = lineShadowOperation.b() + 270.0f;
        a(b);
        this.g.add(lineShadowOperation);
        this.d = b2;
        this.b = f;
        this.c = f2;
    }

    public final void d(float f, float f2, float f3) {
        this.a = f;
        this.b = 0.0f;
        this.c = f;
        this.d = f2;
        this.e = (f2 + f3) % 360.0f;
        this.f.clear();
        this.g.clear();
    }
}
