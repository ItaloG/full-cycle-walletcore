package gateway

import "github.com/ItaloG/Go-expert/full-cycle-walletcore/internal/entity"

type AccountGateway interface {
	Save(account *entity.Account) error
	FindByID(id string) (*entity.Account, error)
}
