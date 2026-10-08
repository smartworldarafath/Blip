package androidx.activity.result;

import androidx.activity.result.contract.ActivityResultContracts$PickMultipleVisualMedia;
import androidx.activity.result.contract.ActivityResultContracts$PickVisualMedia;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PickVisualMediaRequestKt {
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.activity.result.PickVisualMediaRequest, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.activity.result.PickVisualMediaRequest$Builder, java.lang.Object] */
    public static PickVisualMediaRequest a(ActivityResultContracts$PickVisualMedia.VisualMediaType visualMediaType) {
        int a = ActivityResultContracts$PickMultipleVisualMedia.Companion.a();
        ?? obj = new Object();
        ActivityResultContracts$PickVisualMedia.ImageAndVideo imageAndVideo = ActivityResultContracts$PickVisualMedia.ImageAndVideo.a;
        obj.a = imageAndVideo;
        ActivityResultContracts$PickMultipleVisualMedia.Companion.a();
        obj.a = visualMediaType;
        obj.b = a;
        ActivityResultContracts$PickVisualMedia.DefaultTab.PhotosTab photosTab = ActivityResultContracts$PickVisualMedia.DefaultTab.PhotosTab.a;
        obj.c = photosTab;
        ?? obj2 = new Object();
        obj2.a = imageAndVideo;
        obj2.b = ActivityResultContracts$PickMultipleVisualMedia.Companion.a();
        obj2.c = photosTab;
        ActivityResultContracts$PickVisualMedia.VisualMediaType visualMediaType2 = obj.a;
        visualMediaType2.getClass();
        obj2.a = visualMediaType2;
        obj2.b = obj.b;
        ActivityResultContracts$PickVisualMedia.DefaultTab defaultTab = obj.c;
        defaultTab.getClass();
        obj2.c = defaultTab;
        return obj2;
    }
}
