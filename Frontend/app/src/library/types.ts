export class _BaseRequest {
}

export class _BaseListResponse<T> {
    public items: Array<T> = []
    public succsess: boolean = false;
    public message: string = '';
}

export class KartRequest extends _BaseRequest {
    public RaceID: number = 0;
}

export class KartResponse extends _BaseListResponse<Kart> {
}

export class Kart {
    public pilotID: number = 0;
    public name: string = '';
    public totalTime: string = '';
}