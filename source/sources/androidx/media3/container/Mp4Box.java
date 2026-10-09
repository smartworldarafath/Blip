package androidx.media3.container;

import androidx.media3.common.util.ParsableByteArray;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Mp4Box {
    public final int a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ContainerBox extends Mp4Box {
        public final long b;
        public final ArrayList c;
        public final ArrayList d;

        public ContainerBox(int i, long j) {
            super(i);
            this.b = j;
            this.c = new ArrayList();
            this.d = new ArrayList();
        }

        public final ContainerBox b(int i) {
            ArrayList arrayList = this.d;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ContainerBox containerBox = (ContainerBox) arrayList.get(i2);
                if (containerBox.a == i) {
                    return containerBox;
                }
            }
            return null;
        }

        public final LeafBox c(int i) {
            ArrayList arrayList = this.c;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                LeafBox leafBox = (LeafBox) arrayList.get(i2);
                if (leafBox.a == i) {
                    return leafBox;
                }
            }
            return null;
        }

        @Override // androidx.media3.container.Mp4Box
        public final String toString() {
            return Mp4Box.a(this.a) + " leaves: " + Arrays.toString(this.c.toArray()) + " containers: " + Arrays.toString(this.d.toArray());
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class LeafBox extends Mp4Box {
        public final ParsableByteArray b;

        public LeafBox(int i, ParsableByteArray parsableByteArray) {
            super(i);
            this.b = parsableByteArray;
        }
    }

    public Mp4Box(int i) {
        this.a = i;
    }

    public static String a(int i) {
        return "" + ((char) ((i >> 24) & 255)) + ((char) ((i >> 16) & 255)) + ((char) ((i >> 8) & 255)) + ((char) (i & 255));
    }

    public String toString() {
        return a(this.a);
    }
}
