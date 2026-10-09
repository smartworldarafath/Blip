package net.blip.android.ui.util;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import androidx.core.content.FileProvider;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.accompanist.permissions.PermissionStatus;
import defpackage.u2;
import java.io.File;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.blip.android.R;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.util.LaunchersKt$rememberCameraLauncher$launch$1$1", f = "Launchers.kt", l = {159, 167, 172}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class LaunchersKt$rememberCameraLauncher$launch$1$1 extends SuspendLambda implements Function2<CameraLauncherOptions, Continuation<? super Uri>, Object> {
    public File n;
    public Uri o;
    public boolean p;
    public int q;
    public /* synthetic */ Object r;
    public final /* synthetic */ Context s;
    public final /* synthetic */ SuspendingLauncher t;
    public final /* synthetic */ SuspendingPermissionState u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LaunchersKt$rememberCameraLauncher$launch$1$1(Context context, SuspendingLauncher suspendingLauncher, SuspendingPermissionState suspendingPermissionState, Continuation continuation) {
        super(2, continuation);
        this.s = context;
        this.t = suspendingLauncher;
        this.u = suspendingPermissionState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((LaunchersKt$rememberCameraLauncher$launch$1$1) s((CameraLauncherOptions) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        LaunchersKt$rememberCameraLauncher$launch$1$1 launchersKt$rememberCameraLauncher$launch$1$1 = new LaunchersKt$rememberCameraLauncher$launch$1$1(this.s, this.t, this.u, continuation);
        launchersKt$rememberCameraLauncher$launch$1$1.r = obj;
        return launchersKt$rememberCameraLauncher$launch$1$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00e2 A[Catch: Exception -> 0x00f6, TryCatch #0 {Exception -> 0x00f6, blocks: (B:8:0x001c, B:9:0x00de, B:11:0x00e2, B:14:0x00e6, B:19:0x002d, B:20:0x00b5, B:25:0x00c3, B:32:0x008b, B:34:0x0091, B:36:0x009e), top: B:2:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00e6 A[Catch: Exception -> 0x00f6, TRY_LEAVE, TryCatch #0 {Exception -> 0x00f6, blocks: (B:8:0x001c, B:9:0x00de, B:11:0x00e2, B:14:0x00e6, B:19:0x002d, B:20:0x00b5, B:25:0x00c3, B:32:0x008b, B:34:0x0091, B:36:0x009e), top: B:2:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00bd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00dd  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        Uri d;
        File file;
        boolean booleanValue;
        File file2;
        boolean z;
        Uri uri;
        File file3;
        Uri uri2;
        SuspendingPermissionState suspendingPermissionState = this.u;
        CameraLauncherOptions cameraLauncherOptions = (CameraLauncherOptions) this.r;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.q;
        Context context = this.s;
        try {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i == 3) {
                            uri = this.o;
                            file3 = this.n;
                            ResultKt.b(obj);
                            uri2 = (Uri) obj;
                            if (uri2 == null) {
                                file3.delete();
                                return uri2;
                            }
                            LoggerKt.a.getClass();
                            Logger.k("CameraLauncher", "failed saving to MediaStore; keeping in app storage", new Pair[0]);
                            return uri;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    z = this.p;
                    d = this.o;
                    file2 = this.n;
                    ResultKt.b(obj);
                    if (((Boolean) obj).booleanValue()) {
                        return d;
                    }
                    booleanValue = z;
                    uri = d;
                    this.r = null;
                    this.n = file2;
                    this.o = uri;
                    this.p = booleanValue;
                    this.q = 3;
                    DefaultScheduler defaultScheduler = Dispatchers.a;
                    obj = BuildersKt.e(DefaultIoScheduler.l, new LaunchersKt$saveToMediaStore$2(context, cameraLauncherOptions, file2, null), this);
                    if (obj != coroutineSingletons) {
                        file3 = file2;
                        uri2 = (Uri) obj;
                        if (uri2 == null) {
                        }
                    }
                    return coroutineSingletons;
                }
                d = this.o;
                file = this.n;
                ResultKt.b(obj);
            } else {
                ResultKt.b(obj);
                File file4 = new File(context.getExternalFilesDir(Environment.DIRECTORY_PICTURES), cameraLauncherOptions.a.a() + ".jpg");
                d = FileProvider.d(context, context.getString(R.string.fileProviderAuthority), file4);
                Function2 function2 = this.t.a;
                d.getClass();
                this.r = cameraLauncherOptions;
                this.n = file4;
                this.o = d;
                this.q = 1;
                Object n = function2.n(d, this);
                if (n != coroutineSingletons) {
                    file = file4;
                    obj = n;
                }
                return coroutineSingletons;
            }
            booleanValue = ((Boolean) obj).booleanValue();
            if (booleanValue) {
                if (Build.VERSION.SDK_INT <= 28) {
                    PermissionStatus permissionStatus = suspendingPermissionState.a;
                    permissionStatus.getClass();
                    if (!permissionStatus.equals(PermissionStatus.Granted.a)) {
                        Function1 function1 = suspendingPermissionState.b;
                        this.r = cameraLauncherOptions;
                        this.n = file;
                        this.o = d;
                        this.p = booleanValue;
                        this.q = 2;
                        Object b = function1.b(this);
                        if (b != coroutineSingletons) {
                            z = booleanValue;
                            obj = b;
                            file2 = file;
                            if (((Boolean) obj).booleanValue()) {
                            }
                        } else {
                            return coroutineSingletons;
                        }
                    }
                }
                file2 = file;
                uri = d;
                this.r = null;
                this.n = file2;
                this.o = uri;
                this.p = booleanValue;
                this.q = 3;
                DefaultScheduler defaultScheduler2 = Dispatchers.a;
                obj = BuildersKt.e(DefaultIoScheduler.l, new LaunchersKt$saveToMediaStore$2(context, cameraLauncherOptions, file2, null), this);
                if (obj != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
            file.delete();
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
