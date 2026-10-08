package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import com.google.android.material.chip.Chip;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class AppCompatCompoundButtonHelper {
    public final Chip a;
    public ColorStateList b = null;
    public PorterDuff.Mode c = null;
    public boolean d = false;
    public boolean e = false;
    public boolean f;

    public AppCompatCompoundButtonHelper(Chip chip) {
        this.a = chip;
    }

    public final void a() {
        Chip chip = this.a;
        Drawable buttonDrawable = chip.getButtonDrawable();
        if (buttonDrawable != null) {
            if (this.d || this.e) {
                Drawable mutate = buttonDrawable.mutate();
                if (this.d) {
                    mutate.setTintList(this.b);
                }
                if (this.e) {
                    mutate.setTintMode(this.c);
                }
                if (mutate.isStateful()) {
                    mutate.setState(chip.getDrawableState());
                }
                chip.setButtonDrawable(mutate);
            }
        }
    }
}
