package gateway

import "github.com/ItaloG/Go-expert/full-cycle-walletcore/internal/entity"

type ClientGateway interface {
	Get(id string) (*entity.Client, error)
	Save(client *entity.Client) error
}
