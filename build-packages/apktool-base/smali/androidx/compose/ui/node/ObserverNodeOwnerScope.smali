.class public final Landroidx/compose/ui/node/ObserverNodeOwnerScope;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/OwnerScope;


# static fields
.field public static final k:Lla;


# instance fields
.field public final j:Landroidx/compose/ui/node/ObserverModifierNode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lla;

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lla;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->k:Lla;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/ObserverModifierNode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->j:Landroidx/compose/ui/node/ObserverModifierNode;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final z()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->j:Landroidx/compose/ui/node/ObserverModifierNode;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->j:Landroidx/compose/ui/Modifier$Node;

    .line 6
    .line 7
    iget-boolean p0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 8
    .line 9
    return p0
.end method
