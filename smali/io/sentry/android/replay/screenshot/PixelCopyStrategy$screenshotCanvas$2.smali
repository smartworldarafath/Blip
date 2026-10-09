.class final Lio/sentry/android/replay/screenshot/PixelCopyStrategy$screenshotCanvas$2;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/Canvas;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Lio/sentry/android/replay/screenshot/PixelCopyStrategy;


# direct methods
.method public constructor <init>(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$screenshotCanvas$2;->k:Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Canvas;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$screenshotCanvas$2;->k:Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

    .line 4
    .line 5
    iget-object p0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->g:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
