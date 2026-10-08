.class public final Lcoil3/decode/ExifData;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final c:Lcoil3/decode/ExifData;


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcoil3/decode/ExifData;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, v1}, Lcoil3/decode/ExifData;-><init>(IZ)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcoil3/decode/ExifData;->c:Lcoil3/decode/ExifData;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lcoil3/decode/ExifData;->a:Z

    .line 5
    .line 6
    iput p1, p0, Lcoil3/decode/ExifData;->b:I

    .line 7
    .line 8
    return-void
.end method
