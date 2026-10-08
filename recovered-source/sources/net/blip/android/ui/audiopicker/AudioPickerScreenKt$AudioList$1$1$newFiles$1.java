package net.blip.android.ui.audiopicker;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.ArrayList;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.audiopicker.AudioPickerScreenKt$AudioList$1$1$newFiles$1", f = "AudioPickerScreen.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class AudioPickerScreenKt$AudioList$1$1$newFiles$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends AudioFile>>, Object> {
    public final /* synthetic */ Context n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioPickerScreenKt$AudioList$1$1$newFiles$1(Context context, Continuation continuation) {
        super(2, continuation);
        this.n = context;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((AudioPickerScreenKt$AudioList$1$1$newFiles$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new AudioPickerScreenKt$AudioList$1$1$newFiles$1(this.n, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a4, code lost:
    
        if (r6 == null) goto L36;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        String string;
        String string2;
        String string3;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        Context context = this.n;
        context.getClass();
        Cursor query = context.getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[]{"_id", "_data", "_display_name", "duration", "title", "artist", "mime_type"}, "is_music != 0", null, "title_key");
        if (query == null) {
            return EmptyList.j;
        }
        ArrayList arrayList = new ArrayList();
        try {
            int columnIndexOrThrow = query.getColumnIndexOrThrow("_id");
            int columnIndexOrThrow2 = query.getColumnIndexOrThrow("_data");
            int columnIndexOrThrow3 = query.getColumnIndexOrThrow("duration");
            int columnIndexOrThrow4 = query.getColumnIndexOrThrow("title");
            int columnIndexOrThrow5 = query.getColumnIndexOrThrow("_display_name");
            int columnIndexOrThrow6 = query.getColumnIndexOrThrow("artist");
            while (query.moveToNext()) {
                Integer num = null;
                if (query.isNull(columnIndexOrThrow2)) {
                    string = null;
                } else {
                    string = query.getString(columnIndexOrThrow2);
                }
                if (string == null || !StringsKt.i(string, "WhatsApp/Media", false)) {
                    if (string == null || !StringsKt.i(string, "DCIM/Camera", false)) {
                        long j = query.getLong(columnIndexOrThrow);
                        if (query.isNull(columnIndexOrThrow4)) {
                            string2 = null;
                        } else {
                            string2 = query.getString(columnIndexOrThrow4);
                        }
                        if (string2 != null) {
                            if (string2.equals("<unknown>")) {
                                string2 = null;
                            }
                        }
                        if (query.isNull(columnIndexOrThrow5)) {
                            string2 = null;
                        } else {
                            string2 = query.getString(columnIndexOrThrow5);
                        }
                        if (string2 == null || string2.equals("<unknown>")) {
                            string2 = null;
                        }
                        if (query.isNull(columnIndexOrThrow6)) {
                            string3 = null;
                        } else {
                            string3 = query.getString(columnIndexOrThrow6);
                        }
                        if (string3 == null || string3.equals("<unknown>")) {
                            string3 = null;
                        }
                        if (!query.isNull(columnIndexOrThrow3)) {
                            num = Integer.valueOf(query.getInt(columnIndexOrThrow3));
                        }
                        Uri withAppendedId = ContentUris.withAppendedId(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, j);
                        withAppendedId.getClass();
                        arrayList.add(new AudioFile(string2, string3, num, withAppendedId));
                    }
                }
            }
            query.close();
            return arrayList;
        } finally {
        }
    }
}
