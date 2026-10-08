package androidx.datastore.preferences.core;

import androidx.datastore.core.DataStoreFactory;
import androidx.datastore.core.FileStorage;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import defpackage.u2;
import java.io.File;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PreferenceDataStoreFactory {
    public static PreferenceDataStore a(ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, CoroutineScope coroutineScope, final Function0 function0) {
        list.getClass();
        return new PreferenceDataStore(new PreferenceDataStore(DataStoreFactory.a(new FileStorage(new Function0<File>() { // from class: androidx.datastore.preferences.core.PreferenceDataStoreFactory$create$delegate$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                File file = (File) Function0.this.a();
                file.getClass();
                String name = file.getName();
                name.getClass();
                if (StringsKt.M(name, '.', "").equals("preferences_pb")) {
                    File absoluteFile = file.getAbsoluteFile();
                    absoluteFile.getClass();
                    return absoluteFile;
                }
                u2.h("File extension for file: ", file, " does not match required extension for Preferences file: preferences_pb");
                return null;
            }
        }), replaceFileCorruptionHandler, list, coroutineScope)));
    }
}
