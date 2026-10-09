package com.google.android.material.resources;

import android.graphics.Typeface;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CancelableFontCallback extends TextAppearanceFontCallback {
    public final Typeface a;
    public final ApplyFont b;
    public boolean c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface ApplyFont {
        void a(Typeface typeface);
    }

    public CancelableFontCallback(ApplyFont applyFont, Typeface typeface) {
        this.a = typeface;
        this.b = applyFont;
    }

    @Override // com.google.android.material.resources.TextAppearanceFontCallback
    public final void a(int i) {
        if (!this.c) {
            this.b.a(this.a);
        }
    }

    @Override // com.google.android.material.resources.TextAppearanceFontCallback
    public final void b(Typeface typeface, boolean z) {
        if (!this.c) {
            this.b.a(typeface);
        }
    }
}
