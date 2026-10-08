package net.blip.android.ui.util;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.util.LaunchersKt$saveToMediaStore$2", f = "Launchers.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class LaunchersKt$saveToMediaStore$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Uri>, Object> {
    public final /* synthetic */ Context n;
    public final /* synthetic */ CameraLauncherOptions o;
    public final /* synthetic */ File p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LaunchersKt$saveToMediaStore$2(Context context, CameraLauncherOptions cameraLauncherOptions, File file, Continuation continuation) {
        super(2, continuation);
        this.n = context;
        this.o = cameraLauncherOptions;
        this.p = file;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((LaunchersKt$saveToMediaStore$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new LaunchersKt$saveToMediaStore$2(this.n, this.o, this.p, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        Context context = this.n;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        try {
            ContentValues contentValues = new ContentValues();
            CameraLauncherOptions cameraLauncherOptions = this.o;
            contentValues.put("_display_name", cameraLauncherOptions.a.a() + ".jpg");
            contentValues.put("mime_type", "image/jpeg");
            if (Build.VERSION.SDK_INT >= 29) {
                contentValues.put("relative_path", cameraLauncherOptions.b);
                contentValues.put("is_pending", new Integer(1));
            }
            Uri insert = context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
            if (insert == null) {
                return null;
            }
            OutputStream openOutputStream = context.getContentResolver().openOutputStream(insert);
            if (openOutputStream != null) {
                try {
                    FileInputStream fileInputStream = new FileInputStream(this.p);
                    try {
                        byte[] bArr = new byte[8192];
                        long j = 0;
                        for (int read = fileInputStream.read(bArr); read >= 0; read = fileInputStream.read(bArr)) {
                            openOutputStream.write(bArr, 0, read);
                            j += read;
                        }
                        fileInputStream.close();
                        new Long(j);
                        openOutputStream.close();
                    } finally {
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.a(openOutputStream, th);
                        throw th2;
                    }
                }
            }
            if (Build.VERSION.SDK_INT >= 29) {
                contentValues.clear();
                contentValues.put("is_pending", new Integer(0));
                context.getContentResolver().update(insert, contentValues, null, null);
            }
            return insert;
        } catch (Exception e) {
            Logger logger = LoggerKt.a;
            Pair[] pairArr = {new Pair("err", e)};
            logger.getClass();
            Logger.d("MediaStore", "saving to media store", pairArr);
            return null;
        }
    }
}
