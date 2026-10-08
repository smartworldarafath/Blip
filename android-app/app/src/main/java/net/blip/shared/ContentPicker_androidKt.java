package net.blip.shared;

import androidx.activity.ComponentActivity;
import androidx.activity.ComponentActivity$activityResultRegistry$1;
import androidx.activity.compose.LocalActivityKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import defpackage.k8;
import io.github.vinceglb.filekit.dialogs.FileKitDialog;
import java.lang.ref.WeakReference;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import net.blip.shared.ContentPicker$ContentType;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ContentPicker_androidKt {
    public static final String a(ContentPicker$ContentType contentPicker$ContentType) {
        if (contentPicker$ContentType instanceof ContentPicker$ContentType.File) {
            return "file";
        }
        if (Intrinsics.a(contentPicker$ContentType, ContentPicker$ContentType.Image.a)) {
            return "image";
        }
        if (Intrinsics.a(contentPicker$ContentType, ContentPicker$ContentType.Video.a)) {
            return "video";
        }
        if (Intrinsics.a(contentPicker$ContentType, ContentPicker$ContentType.ImageAndVideo.a)) {
            return "image_and_video";
        }
        if (Intrinsics.a(contentPicker$ContentType, ContentPicker$ContentType.Directory.a)) {
            return "directory";
        }
        k8.e();
        return null;
    }

    public static final Function2 b(Composer composer) {
        ComponentActivity componentActivity;
        GapComposer gapComposer = (GapComposer) composer;
        Object j = gapComposer.j(LocalActivityKt.a);
        if (j instanceof ComponentActivity) {
            componentActivity = (ComponentActivity) j;
        } else {
            componentActivity = null;
        }
        boolean f = gapComposer.f(componentActivity);
        Object K = gapComposer.K();
        if (f || K == Composer.Companion.a) {
            if (componentActivity != null) {
                WeakReference weakReference = FileKitDialog.a;
                ComponentActivity$activityResultRegistry$1 componentActivity$activityResultRegistry$1 = componentActivity.q;
                componentActivity$activityResultRegistry$1.getClass();
                FileKitDialog.a = new WeakReference(componentActivity$activityResultRegistry$1);
            }
            K = new ContentPicker_androidKt$rememberContentPickerLauncher$1$2(componentActivity, null);
            gapComposer.g0(K);
        }
        return (Function2) K;
    }
}
