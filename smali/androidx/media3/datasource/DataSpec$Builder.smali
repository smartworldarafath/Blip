.class public final Landroidx/media3/datasource/DataSpec$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/DataSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Landroid/net/Uri;

.field public final b:I

.field public c:Ljava/util/Map;

.field public d:J

.field public final e:J

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Landroidx/media3/datasource/DataSpec$Builder;->b:I

    .line 6
    .line 7
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/datasource/DataSpec$Builder;->c:Ljava/util/Map;

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    iput-wide v0, p0, Landroidx/media3/datasource/DataSpec$Builder;->e:J

    .line 14
    .line 15
    return-void
.end method
