package androidx.compose.ui.text.font;

import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.State;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface TypefaceResult extends State<Object> {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Async implements TypefaceResult, State<Object> {
        public final AsyncFontListLoader j;

        public Async(AsyncFontListLoader asyncFontListLoader) {
            this.j = asyncFontListLoader;
        }

        @Override // androidx.compose.ui.text.font.TypefaceResult
        public final boolean d() {
            return this.j.n;
        }

        @Override // androidx.compose.runtime.State
        public final Object getValue() {
            return ((SnapshotMutableStateImpl) this.j.m).getValue();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Immutable implements TypefaceResult {
        public final Object j;
        public final boolean k;

        public Immutable(Object obj, boolean z) {
            this.j = obj;
            this.k = z;
        }

        @Override // androidx.compose.ui.text.font.TypefaceResult
        public final boolean d() {
            return this.k;
        }

        @Override // androidx.compose.runtime.State
        public final Object getValue() {
            return this.j;
        }
    }

    boolean d();
}
