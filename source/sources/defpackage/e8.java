package defpackage;

import coil3.decode.ExifOrientationStrategy;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class e8 implements ExifOrientationStrategy {
    @Override // coil3.decode.ExifOrientationStrategy
    public final boolean a(String str) {
        if (str != null) {
            if (str.equals("image/jpeg") || str.equals("image/webp") || str.equals("image/heic") || str.equals("image/heif")) {
                return true;
            }
            return false;
        }
        return false;
    }
}
