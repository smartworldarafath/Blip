package androidx.activity.result.contract;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.activity.result.contract.ActivityResultContract;
import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ActivityResultContracts$OpenMultipleDocuments extends ActivityResultContract<String[], List<Uri>> {
    @Override // androidx.activity.result.contract.ActivityResultContract
    public final Intent a(Context context, Object obj) {
        String[] strArr = (String[]) obj;
        strArr.getClass();
        Intent type = new Intent("android.intent.action.OPEN_DOCUMENT").putExtra("android.intent.extra.MIME_TYPES", strArr).putExtra("android.intent.extra.ALLOW_MULTIPLE", true).setType("*/*");
        type.getClass();
        return type;
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    public final ActivityResultContract.SynchronousResult b(Context context, Object obj) {
        ((String[]) obj).getClass();
        return null;
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    public final Object c(Intent intent, int i) {
        if (i != -1) {
            intent = null;
        }
        if (intent != null) {
            return ActivityResultContracts$GetMultipleContents$Companion.a(intent);
        }
        return EmptyList.j;
    }
}
