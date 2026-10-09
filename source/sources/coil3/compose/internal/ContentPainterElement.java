package coil3.compose.internal;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import coil3.ImageLoader;
import coil3.compose.AsyncImageModelEqualityDelegate;
import coil3.compose.AsyncImagePainter;
import coil3.compose.AsyncImagePreviewHandler;
import coil3.compose.ConstraintsSizeResolver;
import coil3.request.ImageRequest;
import coil3.size.SizeResolver;
import defpackage.jb;
import defpackage.q;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ContentPainterElement extends ModifierNodeElement<ContentPainterNode> {
    public final ImageRequest b;
    public final ImageLoader c;
    public final AsyncImageModelEqualityDelegate d;
    public final Function1 e;
    public final Function1 f;
    public final Alignment g;
    public final ContentScale h;
    public final AsyncImagePreviewHandler i;
    public final String j;

    public ContentPainterElement(ImageRequest imageRequest, ImageLoader imageLoader, AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate, Function1 function1, Function1 function12, Alignment alignment, ContentScale contentScale, AsyncImagePreviewHandler asyncImagePreviewHandler, String str) {
        this.b = imageRequest;
        this.c = imageLoader;
        this.d = asyncImageModelEqualityDelegate;
        this.e = function1;
        this.f = function12;
        this.g = alignment;
        this.h = contentScale;
        this.i = asyncImagePreviewHandler;
        this.j = str;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ContentPainterElement) {
                ContentPainterElement contentPainterElement = (ContentPainterElement) obj;
                if (!this.b.equals(contentPainterElement.b) || !this.c.equals(contentPainterElement.c) || !Intrinsics.a(this.d, contentPainterElement.d) || !Intrinsics.a(this.e, contentPainterElement.e) || !Intrinsics.a(this.f, contentPainterElement.f) || !Intrinsics.a(this.g, contentPainterElement.g) || !Intrinsics.a(this.h, contentPainterElement.h) || Float.compare(1.0f, 1.0f) != 0 || !Intrinsics.a(this.i, contentPainterElement.i) || !Intrinsics.a(this.j, contentPainterElement.j)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ConstraintsSizeResolver constraintsSizeResolver;
        AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate = this.d;
        ImageLoader imageLoader = this.c;
        ImageRequest imageRequest = this.b;
        AsyncImagePainter.Input input = new AsyncImagePainter.Input(imageLoader, imageRequest, asyncImageModelEqualityDelegate);
        AsyncImagePainter asyncImagePainter = new AsyncImagePainter(input);
        asyncImagePainter.v = this.e;
        asyncImagePainter.w = this.f;
        asyncImagePainter.x = this.h;
        asyncImagePainter.y = 1;
        asyncImagePainter.z = this.i;
        asyncImagePainter.n(input);
        SizeResolver sizeResolver = imageRequest.o;
        if (sizeResolver instanceof ConstraintsSizeResolver) {
            constraintsSizeResolver = (ConstraintsSizeResolver) sizeResolver;
        } else {
            constraintsSizeResolver = null;
        }
        return new ContentPainterNode(asyncImagePainter, this.g, this.h, this.j, constraintsSizeResolver);
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3 = (this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + (this.b.hashCode() * 31)) * 31)) * 31)) * 31;
        int i = 0;
        Function1 function1 = this.f;
        if (function1 == null) {
            hashCode = 0;
        } else {
            hashCode = function1.hashCode();
        }
        int b = jb.b(q.a(1.0f, (this.h.hashCode() + ((this.g.hashCode() + q.b(1, (hashCode3 + hashCode) * 31, 31)) * 31)) * 31, 961), 31, true);
        AsyncImagePreviewHandler asyncImagePreviewHandler = this.i;
        if (asyncImagePreviewHandler == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = asyncImagePreviewHandler.hashCode();
        }
        int i2 = (b + hashCode2) * 31;
        String str = this.j;
        if (str != null) {
            i = str.hashCode();
        }
        return i2 + i;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        ConstraintsSizeResolver constraintsSizeResolver;
        ContentPainterNode contentPainterNode = (ContentPainterNode) node;
        long i = contentPainterNode.D.i();
        ConstraintsSizeResolver constraintsSizeResolver2 = contentPainterNode.C;
        AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate = this.d;
        ImageLoader imageLoader = this.c;
        ImageRequest imageRequest = this.b;
        AsyncImagePainter.Input input = new AsyncImagePainter.Input(imageLoader, imageRequest, asyncImageModelEqualityDelegate);
        AsyncImagePainter asyncImagePainter = contentPainterNode.D;
        asyncImagePainter.v = this.e;
        asyncImagePainter.w = this.f;
        ContentScale contentScale = this.h;
        asyncImagePainter.x = contentScale;
        asyncImagePainter.y = 1;
        asyncImagePainter.z = this.i;
        asyncImagePainter.n(input);
        boolean a = Size.a(i, asyncImagePainter.i());
        contentPainterNode.x = this.g;
        SizeResolver sizeResolver = imageRequest.o;
        if (sizeResolver instanceof ConstraintsSizeResolver) {
            constraintsSizeResolver = (ConstraintsSizeResolver) sizeResolver;
        } else {
            constraintsSizeResolver = null;
        }
        contentPainterNode.C = constraintsSizeResolver;
        contentPainterNode.y = contentScale;
        contentPainterNode.z = 1.0f;
        contentPainterNode.A = true;
        String str = contentPainterNode.B;
        String str2 = this.j;
        if (!Intrinsics.a(str, str2)) {
            contentPainterNode.B = str2;
            SemanticsModifierNodeKt.b(contentPainterNode);
        }
        boolean a2 = Intrinsics.a(constraintsSizeResolver2, contentPainterNode.C);
        if (!a || !a2) {
            LayoutModifierNodeKt.a(contentPainterNode);
        }
        DrawModifierNodeKt.a(contentPainterNode);
    }

    public final String toString() {
        return "ContentPainterElement(request=" + this.b + ", imageLoader=" + this.c + ", modelEqualityDelegate=" + this.d + ", transform=" + this.e + ", onState=" + this.f + ", filterQuality=Low, alignment=" + this.g + ", contentScale=" + this.h + ", alpha=1.0, colorFilter=null, clipToBounds=true, previewHandler=" + this.i + ", contentDescription=" + this.j + ")";
    }
}
