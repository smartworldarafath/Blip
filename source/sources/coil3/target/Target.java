package coil3.target;

import coil3.Image;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Target {
    void onError(Image image);

    void onStart(Image image);

    void onSuccess(Image image);
}
