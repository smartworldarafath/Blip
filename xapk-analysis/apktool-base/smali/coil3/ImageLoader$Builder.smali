.class public final Lcoil3/ImageLoader$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcoil3/request/ImageRequest$Defaults;

.field public final c:Lcoil3/Extras$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcoil3/ImageLoader$Builder;->a:Landroid/content/Context;

    .line 9
    .line 10
    sget-object p1, Lcoil3/request/ImageRequest$Defaults;->o:Lcoil3/request/ImageRequest$Defaults;

    .line 11
    .line 12
    iput-object p1, p0, Lcoil3/ImageLoader$Builder;->b:Lcoil3/request/ImageRequest$Defaults;

    .line 13
    .line 14
    new-instance p1, Lcoil3/Extras$Builder;

    .line 15
    .line 16
    invoke-direct {p1}, Lcoil3/Extras$Builder;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcoil3/ImageLoader$Builder;->c:Lcoil3/Extras$Builder;

    .line 20
    .line 21
    return-void
.end method
