package io.github.vinceglb.filekit.dialogs;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.provider.MediaStore;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.PickVisualMediaRequest;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.activity.result.contract.ActivityResultContracts$PickMultipleVisualMedia;
import androidx.activity.result.contract.ActivityResultContracts$PickVisualMedia;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import io.github.vinceglb.filekit.dialogs.PickerMode;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "io.github.vinceglb.filekit.dialogs.FileKit_androidKt$callFilePicker$5", f = "FileKit.android.kt", l = {440}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class FileKit_androidKt$callFilePicker$5 extends SuspendLambda implements Function1<Continuation<? super List<Uri>>, Object> {
    public int n;
    public final /* synthetic */ PickerMode o;
    public final /* synthetic */ ActivityResultRegistry p;
    public final /* synthetic */ PickVisualMediaRequest q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileKit_androidKt$callFilePicker$5(PickerMode pickerMode, ActivityResultRegistry activityResultRegistry, PickVisualMediaRequest pickVisualMediaRequest, Continuation continuation) {
        super(1, continuation);
        this.o = pickerMode;
        this.p = activityResultRegistry;
        this.q = pickVisualMediaRequest;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        ActivityResultRegistry activityResultRegistry = this.p;
        PickVisualMediaRequest pickVisualMediaRequest = this.q;
        return new FileKit_androidKt$callFilePicker$5(this.o, activityResultRegistry, pickVisualMediaRequest, (Continuation) obj).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
                return obj;
            }
            u2.l("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        ((PickerMode.Multiple) this.o).getClass();
        final int a = ActivityResultContracts$PickMultipleVisualMedia.Companion.a();
        ActivityResultContract<PickVisualMediaRequest, List<Uri>> activityResultContract = new ActivityResultContract<PickVisualMediaRequest, List<Uri>>(a) { // from class: androidx.activity.result.contract.ActivityResultContracts$PickMultipleVisualMedia
            public final int a;

            /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
            /* loaded from: classes.dex */
            public static final class Companion {
                public static int a() {
                    int pickImagesMaxLimit;
                    if (ActivityResultContracts$PickVisualMedia.Companion.c()) {
                        pickImagesMaxLimit = MediaStore.getPickImagesMaxLimit();
                        return pickImagesMaxLimit;
                    }
                    return Integer.MAX_VALUE;
                }
            }

            {
                this.a = a;
                if (a > 1) {
                    return;
                }
                u2.g("Max items must be higher than 1");
                throw null;
            }

            @Override // androidx.activity.result.contract.ActivityResultContract
            public final Intent a(Context context, Object obj2) {
                int pickImagesMaxLimit;
                PickVisualMediaRequest pickVisualMediaRequest = (PickVisualMediaRequest) obj2;
                pickVisualMediaRequest.getClass();
                boolean c = ActivityResultContracts$PickVisualMedia.Companion.c();
                int i2 = this.a;
                if (c) {
                    Intent intent = new Intent("android.provider.action.PICK_IMAGES");
                    intent.setType(ActivityResultContracts$PickVisualMedia.Companion.b(pickVisualMediaRequest.a));
                    int min = Math.min(i2, pickVisualMediaRequest.b);
                    if (min > 1) {
                        pickImagesMaxLimit = MediaStore.getPickImagesMaxLimit();
                        if (min <= pickImagesMaxLimit) {
                            intent.putExtra("android.provider.extra.PICK_IMAGES_MAX", min);
                            pickVisualMediaRequest.c.getClass();
                            intent.putExtra("android.provider.extra.PICK_IMAGES_LAUNCH_TAB", 1);
                            intent.putExtra("android.provider.extra.PICK_IMAGES_IN_ORDER", false);
                            return intent;
                        }
                    }
                    u2.g("Max items must be greater than 1 and lesser than or equal to MediaStore.getPickImagesMaxLimit()");
                    return null;
                }
                if (ActivityResultContracts$PickVisualMedia.Companion.a(context) != null) {
                    ResolveInfo a2 = ActivityResultContracts$PickVisualMedia.Companion.a(context);
                    if (a2 != null) {
                        ActivityInfo activityInfo = a2.activityInfo;
                        Intent intent2 = new Intent("androidx.activity.result.contract.action.PICK_IMAGES");
                        intent2.setClassName(activityInfo.applicationInfo.packageName, activityInfo.name);
                        intent2.setType(ActivityResultContracts$PickVisualMedia.Companion.b(pickVisualMediaRequest.a));
                        int min2 = Math.min(i2, pickVisualMediaRequest.b);
                        if (min2 > 1) {
                            intent2.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_MAX", min2);
                            pickVisualMediaRequest.c.getClass();
                            intent2.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_LAUNCH_TAB", 1);
                            intent2.putExtra("androidx.activity.result.contract.extra.PICK_IMAGES_IN_ORDER", false);
                            return intent2;
                        }
                        u2.g("Max items must be greater than 1");
                        return null;
                    }
                    u2.l("Required value was null.");
                    return null;
                }
                Intent intent3 = new Intent("android.intent.action.OPEN_DOCUMENT");
                intent3.setType(ActivityResultContracts$PickVisualMedia.Companion.b(pickVisualMediaRequest.a));
                intent3.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
                if (intent3.getType() == null) {
                    intent3.setType("*/*");
                    intent3.putExtra("android.intent.extra.MIME_TYPES", new String[]{"image/*", "video/*"});
                }
                return intent3;
            }

            @Override // androidx.activity.result.contract.ActivityResultContract
            public final ActivityResultContract.SynchronousResult b(Context context, Object obj2) {
                ((PickVisualMediaRequest) obj2).getClass();
                return null;
            }

            @Override // androidx.activity.result.contract.ActivityResultContract
            public final Object c(Intent intent, int i2) {
                if (i2 != -1) {
                    intent = null;
                }
                if (intent != null) {
                    return ActivityResultContracts$GetMultipleContents$Companion.a(intent);
                }
                return EmptyList.j;
            }
        };
        this.n = 1;
        Object a2 = FileKit_androidKt.a(this.p, activityResultContract, this.q, this);
        if (a2 == coroutineSingletons) {
            return coroutineSingletons;
        }
        return a2;
    }
}
