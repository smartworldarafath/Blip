package net.blip.android.filetypes;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.Size;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.Image;
import coil3.ImageLoader;
import coil3.Image_androidKt;
import coil3.RealImageLoader;
import coil3.SingletonImageLoader;
import coil3.request.ImageRequest;
import coil3.request.ImageResult;
import coil3.size.RealSizeResolver;
import coil3.size.SizeKt;
import defpackage.k8;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import net.blip.android.filetypes.Thumbnail;
import net.blip.libblip.FileType;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FileIconKt {
    public static final Object a(Context context, CoroutineScope coroutineScope, Uri uri, Size size) {
        FileType a = FileType_UriKt.a(FileType.j, context, uri);
        int i = 2131230953;
        switch (a.ordinal()) {
            case 0:
            case 13:
                break;
            case 1:
                i = 2131230949;
                break;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                i = 2131230947;
                break;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                i = 2131230955;
                break;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                i = 2131230956;
                break;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                i = 2131230948;
                break;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                i = 2131230950;
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                i = 2131230952;
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                i = 2131230951;
                break;
            case KeyModifiers.a /* 9 */:
                i = 2131230945;
                break;
            case KeyModifiers.b /* 10 */:
                i = 2131230944;
                break;
            case 11:
                i = 2131230946;
                break;
            case KeyModifiers.c /* 12 */:
                i = 2131230954;
                break;
            default:
                k8.e();
                return null;
        }
        Drawable drawable = context.getDrawable(i);
        drawable.getClass();
        if (size != null && CollectionsKt.C(FileType.m, FileType.o, FileType.l).contains(a)) {
            MutableStateFlow a2 = StateFlowKt.a(new FileIcon(drawable, Thumbnail.Pending.a));
            BuildersKt.c(coroutineScope, null, null, new FileIconKt$Request$2(a2, drawable, context, uri, size, null), 3);
            return a2;
        }
        return StateFlowKt.a(new FileIcon(drawable, Thumbnail.None.a));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object b(Context context, Uri uri, Size size, ContinuationImpl continuationImpl) {
        FileIconKt$mediaThumbnail$1 fileIconKt$mediaThumbnail$1;
        int i;
        Image e;
        if (continuationImpl instanceof FileIconKt$mediaThumbnail$1) {
            FileIconKt$mediaThumbnail$1 fileIconKt$mediaThumbnail$12 = (FileIconKt$mediaThumbnail$1) continuationImpl;
            int i2 = fileIconKt$mediaThumbnail$12.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                fileIconKt$mediaThumbnail$12.o = i2 - Integer.MIN_VALUE;
                fileIconKt$mediaThumbnail$1 = fileIconKt$mediaThumbnail$12;
                Object obj = fileIconKt$mediaThumbnail$1.n;
                Object obj2 = CoroutineSingletons.j;
                i = fileIconKt$mediaThumbnail$1.o;
                if (i == 0) {
                    if (i == 1) {
                        context = fileIconKt$mediaThumbnail$1.m;
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    ImageLoader a = SingletonImageLoader.a(context);
                    ImageRequest.Builder builder = new ImageRequest.Builder(context);
                    builder.c = uri;
                    builder.l = new RealSizeResolver(SizeKt.a(size.getWidth(), size.getHeight()));
                    ImageRequest a2 = builder.a();
                    fileIconKt$mediaThumbnail$1.m = context;
                    fileIconKt$mediaThumbnail$1.o = 1;
                    obj = ((RealImageLoader) a).c(a2, fileIconKt$mediaThumbnail$1);
                    if (obj == obj2) {
                        return obj2;
                    }
                }
                e = ((ImageResult) obj).e();
                if (e == null) {
                    Resources resources = context.getResources();
                    resources.getClass();
                    return new Thumbnail.Some(Image_androidKt.a(e, resources));
                }
                return Thumbnail.None.a;
            }
        }
        fileIconKt$mediaThumbnail$1 = new ContinuationImpl(continuationImpl);
        Object obj3 = fileIconKt$mediaThumbnail$1.n;
        Object obj22 = CoroutineSingletons.j;
        i = fileIconKt$mediaThumbnail$1.o;
        if (i == 0) {
        }
        e = ((ImageResult) obj3).e();
        if (e == null) {
        }
    }
}
