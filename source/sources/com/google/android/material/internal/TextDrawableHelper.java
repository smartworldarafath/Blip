package com.google.android.material.internal;

import android.graphics.Typeface;
import android.text.TextPaint;
import com.google.android.material.chip.ChipDrawable;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.resources.TextAppearanceFontCallback;
import java.lang.ref.WeakReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class TextDrawableHelper {
    public float c;
    public final WeakReference e;
    public TextAppearance f;
    public final TextPaint a = new TextPaint(1);
    public final TextAppearanceFontCallback b = new TextAppearanceFontCallback() { // from class: com.google.android.material.internal.TextDrawableHelper.1
        @Override // com.google.android.material.resources.TextAppearanceFontCallback
        public final void a(int i) {
            TextDrawableHelper textDrawableHelper = TextDrawableHelper.this;
            textDrawableHelper.d = true;
            TextDrawableDelegate textDrawableDelegate = (TextDrawableDelegate) textDrawableHelper.e.get();
            if (textDrawableDelegate != null) {
                ChipDrawable chipDrawable = (ChipDrawable) textDrawableDelegate;
                chipDrawable.G();
                chipDrawable.invalidateSelf();
            }
        }

        @Override // com.google.android.material.resources.TextAppearanceFontCallback
        public final void b(Typeface typeface, boolean z) {
            if (!z) {
                TextDrawableHelper textDrawableHelper = TextDrawableHelper.this;
                textDrawableHelper.d = true;
                TextDrawableDelegate textDrawableDelegate = (TextDrawableDelegate) textDrawableHelper.e.get();
                if (textDrawableDelegate != null) {
                    ChipDrawable chipDrawable = (ChipDrawable) textDrawableDelegate;
                    chipDrawable.G();
                    chipDrawable.invalidateSelf();
                }
            }
        }
    };
    public boolean d = true;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface TextDrawableDelegate {
        int[] getState();

        boolean onStateChange(int[] iArr);
    }

    public TextDrawableHelper(ChipDrawable chipDrawable) {
        this.e = new WeakReference(null);
        this.e = new WeakReference(chipDrawable);
    }
}
