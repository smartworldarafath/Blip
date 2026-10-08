package androidx.media3.exoplayer.image;

import android.graphics.Bitmap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ImageOutput {
    public static final ImageOutput a = new Object();

    void a();

    void onImageAvailable(long j, Bitmap bitmap);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.media3.exoplayer.image.ImageOutput$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements ImageOutput {
        @Override // androidx.media3.exoplayer.image.ImageOutput
        public final void a() {
        }

        @Override // androidx.media3.exoplayer.image.ImageOutput
        public final void onImageAvailable(long j, Bitmap bitmap) {
        }
    }
}
