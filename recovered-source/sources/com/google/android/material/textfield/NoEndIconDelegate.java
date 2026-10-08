package com.google.android.material.textfield;

import android.graphics.drawable.Drawable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class NoEndIconDelegate extends EndIconDelegate {
    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void a() {
        TextInputLayout textInputLayout = this.a;
        textInputLayout.setEndIconOnClickListener(null);
        textInputLayout.setEndIconDrawable((Drawable) null);
        textInputLayout.setEndIconContentDescription((CharSequence) null);
    }
}
