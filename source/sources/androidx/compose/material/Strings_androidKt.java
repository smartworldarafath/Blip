package androidx.compose.material;

import android.content.Context;
import android.content.res.Resources;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Strings_androidKt {
    public static final String a(int i, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.j(AndroidCompositionLocals_androidKt.a);
        Resources resources = ((Context) gapComposer.j(AndroidCompositionLocals_androidKt.b)).getResources();
        if (i == 0) {
            return resources.getString(R.string.navigation_menu);
        }
        if (i == 1) {
            return resources.getString(R.string.close_drawer);
        }
        if (i == 2) {
            return resources.getString(R.string.close_sheet);
        }
        if (i == 3) {
            return resources.getString(R.string.default_error_message);
        }
        if (i == 4) {
            return resources.getString(R.string.dropdown_menu);
        }
        if (i == 5) {
            return resources.getString(R.string.range_start);
        }
        if (i == 6) {
            return resources.getString(R.string.range_end);
        }
        if (i == 7) {
            return resources.getString(R.string.mc2_snackbar_pane_title);
        }
        return "";
    }
}
