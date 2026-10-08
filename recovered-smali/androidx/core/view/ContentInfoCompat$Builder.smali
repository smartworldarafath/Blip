.class public final Landroidx/core/view/ContentInfoCompat$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroidx/core/view/ContentInfoCompat$BuilderCompat;


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1f

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;

    .line 11
    .line 12
    invoke-direct {v0, p1, p2}, Landroidx/core/view/ContentInfoCompat$BuilderCompat31Impl;-><init>(Landroid/content/ClipData;I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, v0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->a:Landroid/content/ClipData;

    .line 24
    .line 25
    iput p2, v0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->b:I

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a()Landroidx/core/view/ContentInfoCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->build()Landroidx/core/view/ContentInfoCompat;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->setExtras(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->b(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/view/ContentInfoCompat$Builder;->a:Landroidx/core/view/ContentInfoCompat$BuilderCompat;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->a(Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
