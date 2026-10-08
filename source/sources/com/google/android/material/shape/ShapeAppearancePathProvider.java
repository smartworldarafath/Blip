package com.google.android.material.shape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import com.google.android.material.shadow.ShadowRenderer;
import com.google.android.material.shape.ShapePath;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ShapeAppearancePathProvider {
    public final ShapePath[] a = new ShapePath[4];
    public final Matrix[] b = new Matrix[4];
    public final Matrix[] c = new Matrix[4];
    public final PointF d = new PointF();
    public final Path e = new Path();
    public final Path f = new Path();
    public final ShapePath g = new ShapePath();
    public final float[] h = new float[2];
    public final float[] i = new float[2];
    public final Path j = new Path();
    public final Path k = new Path();
    public final boolean l = true;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Lazy {
        public static final ShapeAppearancePathProvider a = new ShapeAppearancePathProvider();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface PathListener {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ShapeAppearancePathSpec {
        public final float a;

        public ShapeAppearancePathSpec(ShapeAppearanceModel shapeAppearanceModel, float f, RectF rectF, PathListener pathListener, Path path) {
            this.a = f;
        }
    }

    public ShapeAppearancePathProvider() {
        for (int i = 0; i < 4; i++) {
            this.a[i] = new ShapePath();
            this.b[i] = new Matrix();
            this.c[i] = new Matrix();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r22v3 */
    public final void a(ShapeAppearanceModel shapeAppearanceModel, float f, RectF rectF, PathListener pathListener, Path path) {
        Matrix[] matrixArr;
        float[] fArr;
        int i;
        ShapePath[] shapePathArr;
        Matrix[] matrixArr2;
        boolean z;
        float f2;
        EdgeTreatment edgeTreatment;
        boolean z2;
        CornerSize cornerSize;
        CornerTreatment cornerTreatment;
        ShapeAppearancePathSpec shapeAppearancePathSpec;
        ShapeAppearancePathProvider shapeAppearancePathProvider = this;
        path.rewind();
        Path path2 = shapeAppearancePathProvider.e;
        path2.rewind();
        Path path3 = shapeAppearancePathProvider.f;
        path3.rewind();
        path3.addRect(rectF, Path.Direction.CW);
        ShapeAppearancePathSpec shapeAppearancePathSpec2 = new ShapeAppearancePathSpec(shapeAppearanceModel, f, rectF, pathListener, path);
        int i2 = 0;
        while (true) {
            matrixArr = shapeAppearancePathProvider.c;
            fArr = shapeAppearancePathProvider.h;
            i = 4;
            shapePathArr = shapeAppearancePathProvider.a;
            matrixArr2 = shapeAppearancePathProvider.b;
            z = 0;
            if (i2 >= 4) {
                break;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        cornerSize = shapeAppearanceModel.f;
                    } else {
                        cornerSize = shapeAppearanceModel.e;
                    }
                } else {
                    cornerSize = shapeAppearanceModel.h;
                }
            } else {
                cornerSize = shapeAppearanceModel.g;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        cornerTreatment = shapeAppearanceModel.b;
                    } else {
                        cornerTreatment = shapeAppearanceModel.a;
                    }
                } else {
                    cornerTreatment = shapeAppearanceModel.d;
                }
            } else {
                cornerTreatment = shapeAppearanceModel.c;
            }
            ShapePath shapePath = shapePathArr[i2];
            cornerTreatment.getClass();
            cornerTreatment.a(shapePath, shapeAppearancePathSpec2.a, cornerSize.a(rectF));
            int i3 = i2 + 1;
            float f3 = i3 * 90;
            matrixArr2[i2].reset();
            PointF pointF = shapeAppearancePathProvider.d;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        shapeAppearancePathSpec = shapeAppearancePathSpec2;
                        pointF.set(rectF.right, rectF.top);
                    } else {
                        shapeAppearancePathSpec = shapeAppearancePathSpec2;
                        pointF.set(rectF.left, rectF.top);
                    }
                } else {
                    shapeAppearancePathSpec = shapeAppearancePathSpec2;
                    pointF.set(rectF.left, rectF.bottom);
                }
            } else {
                shapeAppearancePathSpec = shapeAppearancePathSpec2;
                pointF.set(rectF.right, rectF.bottom);
            }
            matrixArr2[i2].setTranslate(pointF.x, pointF.y);
            matrixArr2[i2].preRotate(f3);
            ShapePath shapePath2 = shapePathArr[i2];
            fArr[0] = shapePath2.b;
            fArr[1] = shapePath2.c;
            matrixArr2[i2].mapPoints(fArr);
            matrixArr[i2].reset();
            matrixArr[i2].setTranslate(fArr[0], fArr[1]);
            matrixArr[i2].preRotate(f3);
            i2 = i3;
            shapeAppearancePathSpec2 = shapeAppearancePathSpec;
        }
        int i4 = 0;
        while (i4 < i) {
            ShapePath shapePath3 = shapePathArr[i4];
            shapePath3.getClass();
            fArr[z] = 0.0f;
            fArr[1] = shapePath3.a;
            matrixArr2[i4].mapPoints(fArr);
            if (i4 == 0) {
                path.moveTo(fArr[z], fArr[1]);
            } else {
                path.lineTo(fArr[z], fArr[1]);
            }
            shapePathArr[i4].b(matrixArr2[i4], path);
            if (pathListener != null) {
                ShapePath shapePath4 = shapePathArr[i4];
                Matrix matrix = matrixArr2[i4];
                MaterialShapeDrawable materialShapeDrawable = MaterialShapeDrawable.this;
                BitSet bitSet = materialShapeDrawable.m;
                shapePath4.getClass();
                f2 = 0.0f;
                bitSet.set(i4, z);
                ShapePath.ShadowCompatOperation[] shadowCompatOperationArr = materialShapeDrawable.k;
                shapePath4.a(shapePath4.e);
                shadowCompatOperationArr[i4] = new ShapePath.ShadowCompatOperation() { // from class: com.google.android.material.shape.ShapePath.1
                    public final /* synthetic */ ArrayList b;
                    public final /* synthetic */ Matrix c;

                    public AnonymousClass1(ArrayList arrayList, Matrix matrix2) {
                        r1 = arrayList;
                        r2 = matrix2;
                    }

                    @Override // com.google.android.material.shape.ShapePath.ShadowCompatOperation
                    public final void a(Matrix matrix2, ShadowRenderer shadowRenderer, int i5, Canvas canvas) {
                        Iterator it = r1.iterator();
                        while (it.hasNext()) {
                            ((ShadowCompatOperation) it.next()).a(r2, shadowRenderer, i5, canvas);
                        }
                    }
                };
            } else {
                f2 = 0.0f;
            }
            int i5 = i4 + 1;
            int i6 = i5 % 4;
            ShapePath shapePath5 = shapePathArr[i4];
            fArr[0] = shapePath5.b;
            fArr[1] = shapePath5.c;
            matrixArr2[i4].mapPoints(fArr);
            ShapePath shapePath6 = shapePathArr[i6];
            shapePath6.getClass();
            float[] fArr2 = shapeAppearancePathProvider.i;
            fArr2[0] = f2;
            fArr2[1] = shapePath6.a;
            matrixArr2[i6].mapPoints(fArr2);
            float max = Math.max(((float) Math.hypot(fArr[0] - fArr2[0], fArr[1] - fArr2[1])) - 0.001f, f2);
            ShapePath shapePath7 = shapePathArr[i4];
            fArr[0] = shapePath7.b;
            fArr[1] = shapePath7.c;
            matrixArr2[i4].mapPoints(fArr);
            if (i4 != 1 && i4 != 3) {
                Math.abs(rectF.centerY() - fArr[1]);
            } else {
                Math.abs(rectF.centerX() - fArr[0]);
            }
            ShapePath shapePath8 = shapeAppearancePathProvider.g;
            shapePath8.d(0.0f, 270.0f, 0.0f);
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        edgeTreatment = shapeAppearanceModel.j;
                    } else {
                        edgeTreatment = shapeAppearanceModel.i;
                    }
                } else {
                    edgeTreatment = shapeAppearanceModel.l;
                }
            } else {
                edgeTreatment = shapeAppearanceModel.k;
            }
            edgeTreatment.getClass();
            shapePath8.c(max, 0.0f);
            Path path4 = shapeAppearancePathProvider.j;
            path4.reset();
            shapePath8.b(matrixArr[i4], path4);
            if (shapeAppearancePathProvider.l && (shapeAppearancePathProvider.b(path4, i4) || shapeAppearancePathProvider.b(path4, i6))) {
                path4.op(path4, path3, Path.Op.DIFFERENCE);
                fArr[0] = 0.0f;
                fArr[1] = shapePath8.a;
                matrixArr[i4].mapPoints(fArr);
                path2.moveTo(fArr[0], fArr[1]);
                shapePath8.b(matrixArr[i4], path2);
            } else {
                shapePath8.b(matrixArr[i4], path);
            }
            if (pathListener != null) {
                Matrix matrix2 = matrixArr[i4];
                MaterialShapeDrawable materialShapeDrawable2 = MaterialShapeDrawable.this;
                z2 = false;
                materialShapeDrawable2.m.set(i4 + 4, false);
                ShapePath.ShadowCompatOperation[] shadowCompatOperationArr2 = materialShapeDrawable2.l;
                shapePath8.a(shapePath8.e);
                shadowCompatOperationArr2[i4] = new ShapePath.ShadowCompatOperation() { // from class: com.google.android.material.shape.ShapePath.1
                    public final /* synthetic */ ArrayList b;
                    public final /* synthetic */ Matrix c;

                    public AnonymousClass1(ArrayList arrayList, Matrix matrix22) {
                        r1 = arrayList;
                        r2 = matrix22;
                    }

                    @Override // com.google.android.material.shape.ShapePath.ShadowCompatOperation
                    public final void a(Matrix matrix22, ShadowRenderer shadowRenderer, int i52, Canvas canvas) {
                        Iterator it = r1.iterator();
                        while (it.hasNext()) {
                            ((ShadowCompatOperation) it.next()).a(r2, shadowRenderer, i52, canvas);
                        }
                    }
                };
            } else {
                z2 = false;
            }
            z = z2;
            i4 = i5;
            i = 4;
            shapeAppearancePathProvider = this;
        }
        path.close();
        path2.close();
        if (!path2.isEmpty()) {
            path.op(path2, Path.Op.UNION);
        }
    }

    public final boolean b(Path path, int i) {
        Path path2 = this.k;
        path2.reset();
        this.a[i].b(this.b[i], path2);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        path2.computeBounds(rectF, true);
        path.op(path2, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (!rectF.isEmpty() || (rectF.width() > 1.0f && rectF.height() > 1.0f)) {
            return true;
        }
        return false;
    }
}
