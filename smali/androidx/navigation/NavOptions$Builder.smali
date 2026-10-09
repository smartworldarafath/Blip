.class public final Landroidx/navigation/NavOptions$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:I

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->c:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->f:I

    .line 8
    .line 9
    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->g:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Landroidx/navigation/NavOptions;
    .locals 8

    .line 1
    iget-boolean v1, p0, Landroidx/navigation/NavOptions$Builder;->a:Z

    .line 2
    .line 3
    new-instance v0, Landroidx/navigation/NavOptions;

    .line 4
    .line 5
    iget-boolean v2, p0, Landroidx/navigation/NavOptions$Builder;->b:Z

    .line 6
    .line 7
    iget v3, p0, Landroidx/navigation/NavOptions$Builder;->c:I

    .line 8
    .line 9
    iget-boolean v4, p0, Landroidx/navigation/NavOptions$Builder;->d:Z

    .line 10
    .line 11
    iget-boolean v5, p0, Landroidx/navigation/NavOptions$Builder;->e:Z

    .line 12
    .line 13
    iget v6, p0, Landroidx/navigation/NavOptions$Builder;->f:I

    .line 14
    .line 15
    iget v7, p0, Landroidx/navigation/NavOptions$Builder;->g:I

    .line 16
    .line 17
    invoke-direct/range {v0 .. v7}, Landroidx/navigation/NavOptions;-><init>(ZZIZZII)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method
