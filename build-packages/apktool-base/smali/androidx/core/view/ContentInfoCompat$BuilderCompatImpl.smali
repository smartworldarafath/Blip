.class final Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/core/view/ContentInfoCompat$BuilderCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BuilderCompatImpl"
.end annotation


# instance fields
.field public a:Landroid/content/ClipData;

.field public b:I

.field public c:I

.field public d:Landroid/net/Uri;

.field public e:Landroid/os/Bundle;


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->d:Landroid/net/Uri;

    .line 2
    .line 3
    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public final build()Landroidx/core/view/ContentInfoCompat;
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/view/ContentInfoCompat;

    .line 2
    .line 3
    new-instance v1, Landroidx/core/view/ContentInfoCompat$CompatImpl;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroidx/core/view/ContentInfoCompat$CompatImpl;-><init>(Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/core/view/ContentInfoCompat;-><init>(Landroidx/core/view/ContentInfoCompat$Compat;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    return-void
.end method
