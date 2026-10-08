.class public abstract Landroidx/collection/ObjectIntMapKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/collection/MutableObjectIntMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/collection/MutableObjectIntMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/collection/MutableObjectIntMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/collection/ObjectIntMapKt;->a:Landroidx/collection/MutableObjectIntMap;

    .line 8
    .line 9
    return-void
.end method

.method public static final a()Landroidx/collection/MutableObjectIntMap;
    .locals 1

    .line 1
    new-instance v0, Landroidx/collection/MutableObjectIntMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/collection/MutableObjectIntMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
