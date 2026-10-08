package androidx.activity.result.contract;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.ext.SdkExtensions;
import androidx.activity.result.PickVisualMediaRequest;
import androidx.activity.result.contract.ActivityResultContract;
import defpackage.k8;
import defpackage.u2;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ActivityResultContracts$PickVisualMedia extends ActivityResultContract<PickVisualMediaRequest, Uri> {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static ResolveInfo a(Context context) {
            return context.getPackageManager().resolveActivity(new Intent("androidx.activity.result.contract.action.PICK_IMAGES"), 1114112);
        }

        public static String b(VisualMediaType visualMediaType) {
            visualMediaType.getClass();
            if (visualMediaType instanceof ImageOnly) {
                return "image/*";
            }
            if (visualMediaType instanceof VideoOnly) {
                return "video/*";
            }
            if (visualMediaType instanceof ImageAndVideo) {
                return null;
            }
            k8.e();
            return null;
        }

        public static boolean c() {
            int extensionVersion;
            int i = Build.VERSION.SDK_INT;
            if (i < 33) {
                if (i >= 30) {
                    extensionVersion = SdkExtensions.getExtensionVersion(30);
                    if (extensionVersion >= 2) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return true;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class DefaultTab {

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class PhotosTab extends DefaultTab {
            public static final PhotosTab a = new Object();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ImageAndVideo implements VisualMediaType {
        public static final ImageAndVideo a = new Object();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ImageOnly implements VisualMediaType {
        public static final ImageOnly a = new Object();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class VideoOnly implements VisualMediaType {
        public static final VideoOnly a = new Object();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface VisualMediaType {
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    public final Intent a(Context context, Object obj) {
        PickVisualMediaRequest pickVisualMediaRequest = (PickVisualMediaRequest) obj;
        pickVisualMediaRequest.getClass();
        if (Companion.c()) {
            Intent intent = new Intent("android.provider.action.PICK_IMAGES");
            intent.setType(Companion.b(pickVisualMediaRequest.a));
            pickVisualMediaRequest.c.getClass();
            intent.putExtra("android.provider.extra.PICK_IMAGES_LAUNCH_TAB", 1);
            return intent;
        }
        if (Companion.a(context) != null) {
            ResolveInfo a = Companion.a(context);
            if (a != null) {
                ActivityInfo activityInfo = a.activityInfo;
                Intent intent2 = new Intent("androidx.activity.result.contract.action.PICK_IMAGES");
                intent2.setClassName(activityInfo.applicationInfo.packageName, activityInfo.name);
                intent2.setType(Companion.b(pickVisualMediaRequest.a));
                pickVisualMediaRequest.c.getClass();
                intent2.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_LAUNCH_TAB", 1);
                return intent2;
            }
            u2.l("Required value was null.");
            return null;
        }
        Intent intent3 = new Intent("android.intent.action.OPEN_DOCUMENT");
        intent3.setType(Companion.b(pickVisualMediaRequest.a));
        if (intent3.getType() == null) {
            intent3.setType("*/*");
            intent3.putExtra("android.intent.extra.MIME_TYPES", new String[]{"image/*", "video/*"});
        }
        return intent3;
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    public final ActivityResultContract.SynchronousResult b(Context context, Object obj) {
        ((PickVisualMediaRequest) obj).getClass();
        return null;
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    public final Object c(Intent intent, int i) {
        if (i != -1) {
            intent = null;
        }
        if (intent == null) {
            return null;
        }
        Uri data = intent.getData();
        if (data == null) {
            return (Uri) CollectionsKt.t(ActivityResultContracts$GetMultipleContents$Companion.a(intent));
        }
        return data;
    }
}
