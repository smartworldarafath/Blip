package androidx.compose.ui.graphics.vector;

import android.graphics.Path;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class VectorPainterKt {
    public static final void a(GroupComponent groupComponent, VectorGroup vectorGroup) {
        Path.FillType fillType;
        List list = vectorGroup.s;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            VectorNode vectorNode = (VectorNode) list.get(i);
            if (vectorNode instanceof VectorPath) {
                PathComponent pathComponent = new PathComponent();
                VectorPath vectorPath = (VectorPath) vectorNode;
                pathComponent.d = vectorPath.k;
                pathComponent.n = true;
                pathComponent.c();
                int i2 = vectorPath.l;
                Path path = pathComponent.s.a;
                if (i2 == 1) {
                    fillType = Path.FillType.EVEN_ODD;
                } else {
                    fillType = Path.FillType.WINDING;
                }
                path.setFillType(fillType);
                pathComponent.c();
                pathComponent.c();
                pathComponent.b = vectorPath.m;
                pathComponent.c();
                pathComponent.c = vectorPath.n;
                pathComponent.c();
                pathComponent.g = vectorPath.o;
                pathComponent.c();
                pathComponent.e = vectorPath.p;
                pathComponent.c();
                pathComponent.f = vectorPath.q;
                pathComponent.o = true;
                pathComponent.c();
                pathComponent.h = vectorPath.r;
                pathComponent.o = true;
                pathComponent.c();
                pathComponent.i = vectorPath.s;
                pathComponent.o = true;
                pathComponent.c();
                pathComponent.j = vectorPath.t;
                pathComponent.o = true;
                pathComponent.c();
                pathComponent.k = vectorPath.u;
                pathComponent.p = true;
                pathComponent.c();
                pathComponent.l = vectorPath.v;
                pathComponent.p = true;
                pathComponent.c();
                pathComponent.m = vectorPath.w;
                pathComponent.p = true;
                pathComponent.c();
                groupComponent.e(i, pathComponent);
            } else if (vectorNode instanceof VectorGroup) {
                GroupComponent groupComponent2 = new GroupComponent();
                VectorGroup vectorGroup2 = (VectorGroup) vectorNode;
                groupComponent2.k = vectorGroup2.j;
                groupComponent2.c();
                groupComponent2.l = vectorGroup2.k;
                groupComponent2.s = true;
                groupComponent2.c();
                groupComponent2.o = vectorGroup2.n;
                groupComponent2.s = true;
                groupComponent2.c();
                groupComponent2.p = vectorGroup2.o;
                groupComponent2.s = true;
                groupComponent2.c();
                groupComponent2.q = vectorGroup2.p;
                groupComponent2.s = true;
                groupComponent2.c();
                groupComponent2.r = vectorGroup2.q;
                groupComponent2.s = true;
                groupComponent2.c();
                groupComponent2.m = vectorGroup2.l;
                groupComponent2.s = true;
                groupComponent2.c();
                groupComponent2.n = vectorGroup2.m;
                groupComponent2.s = true;
                groupComponent2.c();
                groupComponent2.f = vectorGroup2.r;
                groupComponent2.g = true;
                groupComponent2.c();
                a(groupComponent2, vectorGroup2);
                groupComponent.e(i, groupComponent2);
            }
        }
    }

    public static final VectorPainter b(ImageVector imageVector, Composer composer) {
        BlendModeColorFilter blendModeColorFilter;
        GapComposer gapComposer = (GapComposer) composer;
        Density density = (Density) gapComposer.j(CompositionLocalsKt.h);
        float f = imageVector.j;
        float density2 = density.getDensity();
        boolean e = gapComposer.e((Float.floatToRawIntBits(density2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32));
        Object K = gapComposer.K();
        if (e || K == Composer.Companion.a) {
            GroupComponent groupComponent = new GroupComponent();
            a(groupComponent, imageVector.f);
            float f2 = imageVector.b;
            float f3 = imageVector.c;
            float i0 = density.i0(f2);
            float i02 = density.i0(f3);
            long floatToRawIntBits = (Float.floatToRawIntBits(i0) << 32) | (Float.floatToRawIntBits(i02) & 4294967295L);
            float f4 = imageVector.d;
            float f5 = imageVector.e;
            if (Float.isNaN(f4)) {
                f4 = Float.intBitsToFloat((int) (floatToRawIntBits >> 32));
            }
            if (Float.isNaN(f5)) {
                f5 = Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L));
            }
            long floatToRawIntBits2 = (Float.floatToRawIntBits(f4) << 32) | (4294967295L & Float.floatToRawIntBits(f5));
            VectorPainter vectorPainter = new VectorPainter(groupComponent);
            String str = imageVector.a;
            long j = imageVector.g;
            int i = imageVector.h;
            if (j != 16) {
                blendModeColorFilter = new BlendModeColorFilter(i, j);
            } else {
                blendModeColorFilter = null;
            }
            boolean z = imageVector.i;
            ((SnapshotMutableStateImpl) vectorPainter.o).setValue(new Size(floatToRawIntBits));
            ((SnapshotMutableStateImpl) vectorPainter.p).setValue(Boolean.valueOf(z));
            VectorComponent vectorComponent = vectorPainter.q;
            ((SnapshotMutableStateImpl) vectorComponent.g).setValue(blendModeColorFilter);
            ((SnapshotMutableStateImpl) vectorComponent.i).setValue(new Size(floatToRawIntBits2));
            vectorComponent.c = str;
            gapComposer.g0(vectorPainter);
            K = vectorPainter;
        }
        return (VectorPainter) K;
    }
}
